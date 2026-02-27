SHELL := /bin/bash
MAKEFLAGS += --always-make


build: clean
	mkdocs build -d docs

clean:
	rm docs -rf
