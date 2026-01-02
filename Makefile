.PHONY: dev pre-commit run test

.DEFAULT: help
help:
	@echo "make dev"
	@echo "	setup development environment"
	@echo "make pre-commit"
	@echo "	run pre-commit hooks"
	@echo "make run"
	@echo "	run application"
	@echo "make test"
	@echo "	execute all tests"

check-pre-commit:
ifeq (, $(shell which pre-commit))
	$(error "pre-commit not in $(PATH), pre-commit (https://pre-commit.com) is required")
endif

dev: check-pre-commit
	pre-commit install

pre-commit: check-pre-commit
	pre-commit run --all-files

run:
	odin build . -out:app.bin && ./app.bin

test:
	odin test .
