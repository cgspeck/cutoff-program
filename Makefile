# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile

#
#    ARDUINO_LIBS - A list of any libraries used by the sketch (we
#                   assume these are in $(ARDUINO_DIR)/hardware/libraries
#                   or your sketchbook's libraries directory)
#
# ARDUINO_LIBS = Ethernet SPI
BOARD_TAG    = uno
#MONITOR_PORT = /dev/ttyACM0
include /usr/share/arduino/Arduino.mk
#
# If you have your additional libraries relative to your source, rather
# than in your "sketchbook", also set USER_LIB_PATH, like this example:
#
#        USER_LIB_PATH := $(realpath ../../libraries)
#
USER_LIB_PATH := $(realpath src/)
