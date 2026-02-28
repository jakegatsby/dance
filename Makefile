SHELL := /bin/bash
MAKEFLAGS += --always-make


build: clean
	cd src && zensical build
	mv src/site docs/

clean:
	rm src/site -rf

push:
	git add -A
	git commit -m "$$(date -Is)"
	git push

serve:
	cd src && zensical serve

