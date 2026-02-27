SHELL := /bin/bash
MAKEFLAGS += --always-make


build:
	mkdocs build -d docs
