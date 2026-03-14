SHELL := /bin/bash

.PHONY: install check lint

PROFILE ?=

install:
	./bootstrap.sh $(PROFILE)

check:
	bash -n bootstrap.sh
	find utils-scripts roles -type f -name '*.sh' -print0 | xargs -0 -r -n1 bash -n
	ansible-playbook -i inventory.ini site.yml --syntax-check

lint:
	pre-commit run --all-files
