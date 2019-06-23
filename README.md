# 3D Printer Power control system

This allows a Raspberry Pi running [OctoPrint](https://octoprint.org/) and the [PSU Control Plugin](https://plugins.octoprint.org/plugins/psucontrol/) to control the power supply to a 3D printer.

There is a connection for a [12V network smoke detector](https://www.aliexpress.com/item/32850855553.html?spm=a2g0s.9042311.0.0.27424c4dtptgRe). The smoke detector must be connected, and in a good state, for the power to turn on.

---
**WARNING AND DISCLAIMER**

There is no guarantee whatsoever that this unit will function as intended and there is no responsibility on my part.

Further, working with mains electricity has its own inherent risks. If you attempt this project then you assume all responsibility

---

## How it functions

Once built the Arduino brains of the circuit is connected to some GPIO pins of a Raspberry Pi running Octoprint via the level shifter component.

When power is first connected a startup phase runs for four seconds, during which the alert buzzer & signal will be tested.

After startup, a two-way centre-off toggle switch determines whether the printer:

* is powered on by manual demand (up)
* is off (center)
* is powered on demand by a connected Raspberry Pi (down)

A second toggle switch determines whether the extraction fan:

* is powered on demand by a connected Raspberry Pi (up)
* is off (center)
* is slaved to the printer's power status (down)

The extraction fan will be powered unless the printer is powered.

If the smoke detector is triggered, or gets disconnected:

* power to the printer is cut off
* power to the extraction fan is cut off
* the buzzer is sounded constantly
* an alert signal is sent to the Raspberry Pi

The only way to recover the system once triggered is via the reset button.

You should supply power to the power control system, Pi, printer, extraction fan and all via  Saftey Switch/RCBO/GFCI breaker in order to protect yourself and also render the system incapable of automatically starting up in the event of loss, and resumption, of mains electrical supply/

## Development

### Development Prerequisites

* [Arduino IDE >= 1.8.4](https://www.arduino.cc/en/Main/Software)

* [Arduino-Makefile](https://github.com/sudar/Arduino-Makefile)

* [direnv](https://direnv.net/) for managing arduino & avr library and tool locations if the defaults don't work

The version of Arduino in the Ubuntu repository is ancient and will not work. Consider using `scripts/install-deps.sh` which uses [umake](https://github.com/ubuntu/ubuntu-make) to install up to date Arduino environment.

### Handy Hints

Building, uploading and starting the monitor: `make`

To quit the monitor (gnu screen): `CTRL + A`, `:quit`.

VS Code Intelligence not working? Check [this post](https://github.com/Microsoft/vscode-arduino/issues/438#issuecomment-345362087).

### Typical paths

The default paths in `./Makefile` are for Ubuntu.

Typical paths for OSX, with Arduino-Makefile installed via Homebrew, are (`.envrc`):

```bash
export ARDUINO_DIR=/Applications/Arduino.app/Contents/Java
export ARDMK_DIR=/usr/local/opt/arduino-mk
export AVR_TOOLS_DIR=/Applications/Arduino.app/Contents/Java/hardware/tools/avr
export AVRDUDE=/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude
export AVRDUDE_CONF=/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf
```

## License

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
