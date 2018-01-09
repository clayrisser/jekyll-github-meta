CWD := $(shell pwd)

.PHONY: all
all: clean

.PHONY: clean
clean:
	-@rm -rf *.gemspec &>/dev/null || true
	@echo ::: CLEAN :::
