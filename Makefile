all: clean build upload monitor

build:
	$(MAKE) -C src/

clean:
	$(MAKE) -C src/ clean

help:
	$(MAKE) -C src/ help

monitor:
	$(MAKE) -C src/ monitor

reset:
	$(MAKE) -C src/ reset

upload:
	$(MAKE) -C src/ upload

.PHONY: build clean help monitor reset upload
