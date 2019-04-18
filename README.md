
## Handy Hints

Building, uploading and starting the monitor: `make`

To quit the monitor (gnu screen): `CTRL + A`, `:quit`.

VS Code Intelligence not working? Check [this post](https://github.com/Microsoft/vscode-arduino/issues/438#issuecomment-345362087).

## Development Prerequisites

* [Arduino IDE >= 1.8.4](https://www.arduino.cc/en/Main/Software)

* [Arduino-Makefile](https://github.com/sudar/Arduino-Makefile)

* [direnv](https://direnv.net/) for managing arduino & avr library and tool locations if the defaults don't work

## Typical paths

The default paths in `./Makefile` are for Ubuntu.

Typical paths for OSX, with Arduino-Makefile installed via Homebrew, are (`.envrc`):

```bash
export ARDUINO_DIR=/Applications/Arduino.app/Contents/Java
export ARDMK_DIR=/usr/local/opt/arduino-mk
export AVR_TOOLS_DIR=/Applications/Arduino.app/Contents/Java/hardware/tools/avr
export AVRDUDE=/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude
export AVRDUDE_CONF=/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf
```
