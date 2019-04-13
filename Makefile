build:
	$(MAKE) -C src/

clean:
	$(MAKE) -C src/ clean

help:
	$(MAKE) -C src/ help

upload:
	$(MAKE) -C src/ upload

.PHONY: build clean help upload
