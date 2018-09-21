#ifndef debounce_h
#define debounce_h

#include "Arduino.h"

// implementation of https://hackaday.com/2015/12/10/embed-with-elliot-debounce-your-noisy-buttons-part-ii/

void updateButton(unsigned int *buttonHistory, int pin);

// true on falling edge
bool isButtonPressed(unsigned int *buttonHistory);
#endif

