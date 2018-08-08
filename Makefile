BIN ?= rtcreator
PREFIX ?= /usr/local

install:
	cp rtcreator.sh $(PREFIX)/bin/$(BIN)
	chmod +x $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
