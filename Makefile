BIN ?= remote_targz_creator
PREFIX ?= /usr/local

install:
	cp remote_targz_creator.sh $(PREFIX)/bin/$(BIN)
	chmod +x $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
