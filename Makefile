SHELL := /bin/bash
MAKEFLAGS += --always-make


help:
	@echo
	@chafa --scale 0.4 docs/img/dance-docs.png
	@echo
	@echo
	@echo "Commands:"
	@echo "  all                            clean -> build -> push"
#	@echo "  clean                          rm /docs and src/site"
#	@echo "  build                          zensical build"
	@echo "  push                           add, commit, push"
	@echo "  serve                          zensical serve"
	@echo

all: build push

#build: clean
#	cd src && zensical build --clean
#	mv src/site docs/

#clean:
#	rm docs -rf
#	rm src/site -rf

push:
	git add -A
	git commit -m "$$(date -Is)"
	git push

serve:
	zensical serve

