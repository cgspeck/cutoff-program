#include <Arduino.h>

#include "debounce.h"

// INPUT SIGNALS
#define PIN_IN_DETECTOR_SIGNAL 2
/*
 * no need to define a reset input just bring RESET to low by closing with GND
 * RESET pin has an internal pullup resistor remember to add hardware debounce like below
 * with a 10k and 1k resistor and a 0.1uF capacitor
 *
 * https://hackaday.com/2015/12/09/embed-with-elliot-debounce-your-noisy-buttons-part-i/
 *
*/
#define PIN_IN_PI_PWR_DEMAND_PRINTER 3
#define PIN_IN_PI_PWR_DEMAND_FAN 4
#define PIN_IN_FAN_SW 5

// OUTPUT SIGNALS
// buzzer can be combined with alert led transistor
// printer power led  can be combined with power relay
// combines led, buzzer, pi notification
#define PIN_OUT_ALERT 6

// printer power status led can piggy back off the fan relay pin
#define PIN_RELAY_PRINTER 7
#define PIN_RELAY_FAN 8

#define FLASH_INTERVAL 500
#define STARTUP_INTERVAL 4000
#define INPUT_SCAN_INTERVAL 10

#define SERIAL_REPORT_INTERVAL 1000
// globals
bool startingUp = true;
bool firstCheck = true;
bool alertFlashState = false;
bool detectorTriggered = false;

bool piPrinterPwrDemand = false;
bool previousPiPrinterPwrDemand = false;
bool previousFanPwrOn = false;
bool fanPowerOn = false;
bool fanSwitchOverride = false;
bool previousPiFanPwrDemand = false;


unsigned long previousFlashMillis = 0;
unsigned long previousInputScanMillis = 0;

unsigned long previousSerialReportMillis = 0;

unsigned int inputDetectorHistory = 0;
unsigned int inputFanSwitch = 0;
unsigned int inputPiPwrDemandPrinter = 0;
unsigned int inputPiPwrDemandFan = 0;
// function prototypes
void setupOutputPin(int pinNumber, int initialState = LOW);

// functions
void setupOutputPin(int pinNumber, int initialState) {
  pinMode(pinNumber, initialState);
}

void setup() {
  pinMode(PIN_IN_DETECTOR_SIGNAL, INPUT);
  pinMode(PIN_IN_PI_PWR_DEMAND_PRINTER, INPUT);
  pinMode(PIN_IN_PI_PWR_DEMAND_FAN, INPUT);
  pinMode(PIN_IN_FAN_SW, INPUT);

  // combines led, buzzer, pi notification
  setupOutputPin(PIN_OUT_ALERT);

  setupOutputPin(PIN_RELAY_PRINTER);
  setupOutputPin(PIN_RELAY_FAN);

  Serial.begin(9600);
}

void doSerialReport(unsigned long currentMillis) {
  if((unsigned long)(currentMillis - previousSerialReportMillis) >= SERIAL_REPORT_INTERVAL) {
    Serial.print("Time:");
    Serial.println(currentMillis);

    String statusMsg = ((startingUp) ? "Starting Up" : (
      (detectorTriggered) ? "Detector triggered" :
        "Idle"
    ));

    Serial.print("Status:");
    Serial.println(statusMsg);

    Serial.print("Printer power on:");
    Serial.println(previousPiPrinterPwrDemand);

    Serial.print("Fan power on:");
    Serial.println(previousFanPwrOn);

    previousSerialReportMillis = currentMillis;
  }
}

void loop() {
  unsigned long currentMillis = millis();

  if (startingUp) {
    // flash the alert light
    if ((unsigned long)(currentMillis - previousFlashMillis) >= (int)FLASH_INTERVAL) {
      alertFlashState = !alertFlashState;
      // combines led, buzzer, pi notification
      digitalWrite(PIN_OUT_ALERT, alertFlashState);
      previousFlashMillis = currentMillis;

      if (currentMillis >= 2000) {
        startingUp = false;
      }
    }

    doSerialReport(currentMillis);
    return;
  }

  if (detectorTriggered) {
    doSerialReport(currentMillis);
    return;
  }

  if (firstCheck) {
    // combines led, buzzer, pi notification
    digitalWrite(PIN_OUT_ALERT, LOW);
    firstCheck = false;
  }

  if ((unsigned long)(currentMillis - previousInputScanMillis) >= (int)INPUT_SCAN_INTERVAL) {
    updateButton(&inputDetectorHistory, PIN_IN_DETECTOR_SIGNAL);
    updateButton(&inputFanSwitch, PIN_IN_FAN_SW);
    updateButton(&inputPiPwrDemandFan, PIN_IN_PI_PWR_DEMAND_FAN);
    updateButton(&inputPiPwrDemandPrinter, PIN_IN_PI_PWR_DEMAND_PRINTER);
    previousInputScanMillis = currentMillis;
  }

  if (isButtonPressed(&inputDetectorHistory)) {
    digitalWrite(PIN_RELAY_PRINTER, LOW);
    digitalWrite(PIN_OUT_ALERT, HIGH);
    detectorTriggered = true;
  }

  bool piPrinterPwrDemand = isButtonDown(&inputPiPwrDemandPrinter);

  if (piPrinterPwrDemand != previousPiPrinterPwrDemand) {
    digitalWrite(PIN_RELAY_PRINTER, previousPiPrinterPwrDemand ? HIGH : LOW);
    previousPiPrinterPwrDemand = piPrinterPwrDemand;
  }
  /*
  Fan logic:
    - store last pi fan pwr demand
    - if the button is pressed:
      - flip the fan state
      - ignore the pi until it flips demand state
      - keep processing button presses
  */
  if (isButtonRelease(&inputFanSwitch)){
    fanSwitchOverride = true;
    fanPowerOn = !fanPowerOn;
  }

  bool piFanPwrDemand = isButtonDown(&inputPiPwrDemandFan);

  if (!fanSwitchOverride) {
    fanPowerOn = piFanPwrDemand;
    previousPiFanPwrDemand = piFanPwrDemand;
  } else {
    if (piFanPwrDemand != previousPiFanPwrDemand) {
      fanSwitchOverride = false;
      fanPowerOn = piFanPwrDemand;
      previousPiFanPwrDemand = piFanPwrDemand;
    }
  }

  if (fanPowerOn != previousFanPwrOn) {
    digitalWrite(PIN_RELAY_PRINTER, fanPowerOn ? HIGH: LOW);
    previousFanPwrOn = fanPowerOn;
  }

  doSerialReport(currentMillis);
}
