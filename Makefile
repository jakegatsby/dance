SHELL := /bin/bash
MAKEFLAGS += --always-make


help:
	@echo "FIXME"

all: build push


build: clean
	cd src && zensical build --clean
	mv src/site docs/

clean:
	rm docs -rf
	rm src/site -rf

push:
	git add -A
	git commit -m "$$(date -Is)"
	git push

serve:
	cd src && zensical serve

