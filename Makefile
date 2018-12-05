PREFIX=/usr/local/
EXEC_PREFIX=$(PREFIX)
BINDIR=$(EXEC_PREFIX)/bin

VERSION=0.0.1

all:
	true

install:
	mkdir -p $(DESTDIR)/$(BINDIR)/
	cp gen-status-badge $(DESTDIR)/$(BINDIR)/
	chmod 755 $(DESTDIR)/$(BINDIR)/gen-status-badge

uninstall:
	rm $(DESTDIR)/$(BINDIR)/gen-status-badge

tag:
	git tag -a "$(VERSION)" -m "Tag version '$(VERSION)'"
	git push origin "$(VERSION)"
