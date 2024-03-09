.PHONY: help
.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
# Script to create useful "make help" messages
import re
import sys
target_list = []
for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target_list.append(match.groups())

target_list.sort()
for target, help in target_list:
	print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

help: ## Print a description of all targets
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

install:  ## Install the package from source
	poetry install

test: install  ## Run the unit tests
	poetry run pytest

build:  ## Build the package (e.g., for publishing to PyPI)
	poetry build

# Adjust which paths we lint
LINT_PATHS="."

install-lint:  ## Install the package from source with linting dependencies
	poetry install --only lint

lint: install-lint  ## Run linter to check formatting and style
	./quality/lint ${LINT_PATHS}

format: install-lint  ## Run standard python formatting
	./quality/format ${LINT_PATHS}
