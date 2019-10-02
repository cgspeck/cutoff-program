/*
Arduino 3d printer cut off program
Copyright (C) 2019 Christopher Speck

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/
#include <Arduino.h>

// INPUT SIGNALS
#define PIN_IN_DETECTOR_SIGNAL 2
/*
 * no need to define a reset input just bring RESET to low by closing with GND
 * RESET pin has an internal pullup resistor
*/
#define PIN_IN_PI_PWR_DEMAND_PRINTER A1
#define PIN_IN_PI_PWR_DEMAND_FAN 4

/*
An inline RCD physically prevents entire system from starting up following a powercut
without intervention.

The circuit also includes a momentary push button grounding the reset pin.

This pin is reserved for a future use.
*/
#define PIN_IN_PUSHBUTTON 5

// OUTPUT SIGNALS
// combines buzzer and pi notification
#define PIN_OUT_ALERT A4

#define PIN_RELAY_PRINTER 6
#define PIN_RELAY_FAN 8

#define FLASH_INTERVAL 500
#define STARTUP_INTERVAL 4000

#define SERIAL_REPORT_INTERVAL 1000
// globals
bool startingUp = true;
bool firstCheck = true;
bool alertFlashState = false;
bool detectorTriggered = false;

bool previousPiPrinterPwrDemand = false;
bool previousPiFanPwrDemand = false;
bool fanDemandOverridden = false;
bool actualPrinterPwrState = false;
bool actualFanPwrState = false;

unsigned long previousFlashMillis = 0;
unsigned long previousSerialReportMillis = 0;

// function prototypes
void setupOutputPin(int pinNumber, int initialState = LOW);

// functions
void setupOutputPin(int pinNumber, int initialState)
{
  pinMode(pinNumber, OUTPUT);
  digitalWrite(pinNumber, initialState);
}

void setup()
{
  pinMode(PIN_IN_DETECTOR_SIGNAL, INPUT);
  pinMode(PIN_IN_PI_PWR_DEMAND_PRINTER, INPUT_PULLUP);
  pinMode(PIN_IN_PI_PWR_DEMAND_FAN, INPUT_PULLUP);
  setupOutputPin(PIN_OUT_ALERT);
  setupOutputPin(PIN_RELAY_PRINTER);
  setupOutputPin(PIN_RELAY_FAN);
  Serial.begin(9600);
}

void doSerialReport(unsigned long currentMillis)
{
  if ((unsigned long)(currentMillis - previousSerialReportMillis) >= SERIAL_REPORT_INTERVAL)
  {
    Serial.print("Time:");
    Serial.println(currentMillis);

    String statusMsg = ((startingUp) ? "Starting Up" : ((detectorTriggered) ? "Detector triggered" : "Idle"));

    Serial.print("Status:");
    Serial.println(statusMsg);

    Serial.print("Printer power state:");
    Serial.println(actualPrinterPwrState);

    Serial.print("Fan power state:");
    Serial.println(actualFanPwrState);

    Serial.print("Printer power demand:");
    Serial.println(previousPiPrinterPwrDemand);

    Serial.print("Fan power demand:");
    Serial.println(previousPiFanPwrDemand);

    Serial.print("Fan power override:");
    Serial.println(fanDemandOverridden);

    previousSerialReportMillis = currentMillis;
  }
}

void loop()
{
  unsigned long currentMillis = millis();
  fanDemandOverridden = false;

  if (startingUp)
  {
    // flash the alert light
    if ((unsigned long)(currentMillis - previousFlashMillis) >= (int)FLASH_INTERVAL)
    {
      alertFlashState = !alertFlashState;
      // combines buzzer and pi notification
      digitalWrite(PIN_OUT_ALERT, alertFlashState);
      previousFlashMillis = currentMillis;

      if (currentMillis >= STARTUP_INTERVAL)
      {
        startingUp = false;
      }
    }

    doSerialReport(currentMillis);
    return;
  }

  if (detectorTriggered)
  {
    doSerialReport(currentMillis);
    return;
  }

  if (firstCheck)
  {
    digitalWrite(PIN_OUT_ALERT, LOW);
    firstCheck = false;
  }

  if (digitalRead(PIN_IN_DETECTOR_SIGNAL) == LOW)
  {

    digitalWrite(PIN_RELAY_PRINTER, LOW);
    digitalWrite(PIN_RELAY_FAN, LOW);
    digitalWrite(PIN_OUT_ALERT, HIGH);
    detectorTriggered = true;
    actualPrinterPwrState = false;
    actualFanPwrState = false;
    doSerialReport(currentMillis);
    return;
  }

  bool piPrinterPwrDemand = (digitalRead(PIN_IN_PI_PWR_DEMAND_PRINTER) == LOW);

  if (piPrinterPwrDemand != previousPiPrinterPwrDemand)
  {
    previousPiPrinterPwrDemand = piPrinterPwrDemand;
    actualPrinterPwrState = previousPiPrinterPwrDemand;
    digitalWrite(PIN_RELAY_PRINTER, actualPrinterPwrState);
  }

  bool piFanPwrDemand = (digitalRead(PIN_IN_PI_PWR_DEMAND_FAN) == LOW);

  previousPiFanPwrDemand = piFanPwrDemand;

  if (piFanPwrDemand) {
    if (!piPrinterPwrDemand) {
      // no power to fan if power to printer is off
      piFanPwrDemand = false;
      fanDemandOverridden = true;
    }
  }

  if (actualFanPwrState != piFanPwrDemand) {
    actualFanPwrState = piFanPwrDemand;
    digitalWrite(PIN_RELAY_FAN, piFanPwrDemand);
  }

  doSerialReport(currentMillis);
}
