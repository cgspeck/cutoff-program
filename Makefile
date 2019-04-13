build:
	$(MAKE) -C src/

clean:
	$(MAKE) -C src/

upload:
	$(MAKE) -C src/

.PHONY: build clean upload
