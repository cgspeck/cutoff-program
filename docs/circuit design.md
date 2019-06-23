# Circuit Design Considerations

## RPI

Select following ports/pins:

* GPIO23 OUTPUT: Rpi Printer Power Demand
* GPIO24 INPUT (INTERNAL PULLDOWN): Arduino Printer Power Status
* GPIO25 INPUT (INTERNAL PULLDOWN): Arduino Alarm Triggered (should this be flipped?)
* GND between 24 & 23: To ground on protoboard

https://raspberrypi.stackexchange.com/questions/83610/gpio-pinout-orientation-raspberypi-zero-w

## Arduino

Select following pins/ports:

* 2 INPUT_PULLUP: detector ok signal
* A1 INPUT_PULLUP: two way toggle switch - PI printer power demand or manual power demand
* 4 INPUT_PULLUP: two way toggle switch - fan slaved to printer or PI fan power demand
* 5: reserved, n/c
* A4 OUTPUT: buzzer & pi alarm line
* 6 OUTPUT: relay for printer
* 8 OUTPUT: relay for fan
* GND: protoboard ground
* 3v3: to logic level shifter LV side
* 5v:
  * to logic level shifter HV side
  * to detector common line

## 12v switch mode supply

* GND to protoboard ground
* +12VDC to:
    * smoke detector
    * to relays

## Logic level shifter

References:
https://www.sparkfun.com/products/retired/11978
https://forum.arduino.cc/index.php?topic=381795.0
https://www.sparkfun.com/products/retired/8745
https://www.jaycar.com.au/arduino-compatible-logic-level-converter-module/p/XC4486
https://www.jaycar.com.au/medias/sys_master/images/9229265928222/XC4486-manualMain.jpg

Connections see below

## Momentary Pushbutton (green, softbutton)

Not connected. Reserved for pin 5.

## Momentary Pushbutton (red, reset)

Connect via header strip
switch between GND & RST

## Detector

Connect via header strip
10k pulldown resistor between 2 and GND
Common to 5v

## Printer mode switch

Connect via header strip
Common to A1
10k pull-down resistor between common and ground
Pole 1 to Logic level shifter TX0
Pole 2 to 5v

## Fan mode switch

Connect via header strip
Common to D4
10k pull-down resistor between common and ground
Pole 1 to Logic level shifter TX0
Pole 2 to 5v

## Arduino -> Transistor / Relay / Logic shifter

Select 560R between digital output and Base
Collector connected to Relay
Emitter to ground
Diode in reverse between Relay poles (negative band towards +12VDC)
Select 1N4007 diodes
Relay attached via screw terminals
Logic shifter connected between digital out & resistor to tell Pi when the printer is actually on

## Logic shifter -> Arduino

Connect TX/RX directly to pins
Ground to protoboard
5v to Arduino
3v3 to Arduino

Goes high when Pi is disconnected, so pull downs required upstream of TXOs

## Logic shifter -> Pi

Connect TXI/RXO directly to GPIO via screw terminals
Ground to protoboard via screw terminals

## Buzzer - 12v

Connect via a transistor as per relays

## Arduino power light

https://www.jaycar.com.au/chrome-bezel-with-5mm-red-led/p/SL2610
2V, 15mA
Select 220R resistor inline with LED (drop voltage to 1.7v, limit to 15mA)
Connect via header strip

## Relays

https://www.digikey.com.au/product-detail/en/te-connectivity-potter-brumfield-relays/T9AP1D52-12/T9AP1D52-12-ND/287569
https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1308242_T9A&DocType=DS&DocLang=English
