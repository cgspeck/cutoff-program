#include "Arduino.h"

void updateButton(unsigned int *buttonHistory, int pin) {
  *buttonHistory = *buttonHistory << 1;
  *buttonHistory |= digitalRead(pin);
}

bool isButtonPressed(unsigned int *buttonHistory) {
  bool pressed = false;

  if ((*buttonHistory & 0b11000111) == 0b00000111) {
    pressed = true;
    *buttonHistory = 0b11111111;
  }

  return pressed;
}

