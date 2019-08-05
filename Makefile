#: help - Display callable targets.
.PHONY: help
help:
	@echo "Reference card for usual actions in development environment."
	@echo "Here are available targets:"
	@egrep -o "^#: (.+)" [Mm]akefile  | sed 's/#: /* /'


#: ubutntu - starts/resunmes the ubuntu vm
.PHONY: ubuntu
ubuntu:
	$(MAKE) -C ./ubuntu/ up

