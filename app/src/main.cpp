#include "Arduino.h"
#include "debounce.h"

#define PIN_IN_SIGNAL 1
/*
 * no need to define a reset input just bring RESET to low by closing with GND
 * RESET pin has an internal pullup resistor remember to add hardware debounce like below
 * with a 10k and 1k resistor and a 0.1uF capacitor
 *
 * https://hackaday.com/2015/12/09/embed-with-elliot-debounce-your-noisy-buttons-part-i/
 *
*/

// constants
#define PIN_OUT_RELAY 2
#define PIN_OUT_PI_SIGNAL 3
#define PIN_OUT_PIEZO_PIN 4
#define PIN_OUT_LED_POWER 5
#define PIN_OUT_LED_ALERT 6

#define FLASH_INTERVAL 500
#define STARTUP_INTERVAL 4000
#define PIEZO_TEST_INTERVAL 3000
#define INPUT_SCAN_INTERVAL 10
// globals
bool startingUp = false;
bool firstCheck = true;
bool alertFlashState = false;
bool piezoTested = false;
bool triggered = false;

unsigned long previousFlashMillis = 0;
unsigned long previousInputScanMillis = 0;

unsigned int inputHistory = 0;
// function prototypes
void setupOutputPin(int pinNumber, int initialState = LOW);

// functions
void setupOutputPin(int pinNumber, int initialState) {
  pinMode(pinNumber, initialState);
}

void setup() {
  pinMode(PIN_IN_SIGNAL, INPUT);
  setupOutputPin(PIN_OUT_RELAY, HIGH);
  setupOutputPin(PIN_OUT_PI_SIGNAL);
  setupOutputPin(PIN_OUT_PIEZO_PIN);
  setupOutputPin(PIN_OUT_LED_POWER, HIGH);
  setupOutputPin(PIN_OUT_LED_ALERT);
}

void loop() {
  unsigned long currentMillis = millis();

  if (startingUp) {
    // flash the alert light
    if ((unsigned long)(currentMillis - previousFlashMillis) >= (int)FLASH_INTERVAL) {
      alertFlashState = !alertFlashState;
      digitalWrite(PIN_OUT_LED_ALERT, alertFlashState);
      previousFlashMillis = currentMillis;
    }
    // test piezo
    if (currentMillis >= PIEZO_TEST_INTERVAL && !piezoTested) {
      digitalWrite(PIN_OUT_PIEZO_PIN, HIGH);
      piezoTested = true;
    }
    return;
  }

  if (triggered) {
    return;
  }

  if (firstCheck) {
    // turn off alert light and piezo
    digitalWrite(PIN_OUT_PIEZO_PIN, LOW);
    digitalWrite(PIN_OUT_LED_ALERT, LOW);
    firstCheck = false;
  }

  if ((unsigned long)(currentMillis - previousInputScanMillis) >= (int)INPUT_SCAN_INTERVAL) {
    updateButton(&inputHistory, PIN_IN_SIGNAL);
    previousInputScanMillis = currentMillis;
  }

  if (isButtonPressed(&inputHistory)) {
    digitalWrite(PIN_OUT_RELAY, LOW);
    digitalWrite(PIN_OUT_PI_SIGNAL, HIGH);
    digitalWrite(PIN_OUT_PIEZO_PIN, HIGH);
    digitalWrite(PIN_OUT_LED_ALERT, HIGH);
    triggered = true;
  }
}
