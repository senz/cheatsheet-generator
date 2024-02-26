.PHONY: lint fix install clean test all

MEGA_LINTER_VERSION=7.9.0
MEGA_LINTER_FLAVOR=cupcake
MEGA_LINTER_ARGS=--flavor $(MEGA_LINTER_FLAVOR)
NPX_ARGS=--yes

## Install mega-linter globally
install:
	npm install mega-linter-runner@$(MEGA_LINTER_VERSION) -g

## Run mega-linter
lint:
	npx $(NPX_ARGS) mega-linter-runner@$(MEGA_LINTER_VERSION) $(MEGA_LINTER_ARGS)

## Run mega-linter with fix argument
fix:
	npx $(NPX_ARGS) mega-linter-runner@$(MEGA_LINTER_VERSION) $(MEGA_LINTER_ARGS) --fix

## Clean up
clean:
	echo "Nothing to clean up"

## Test
test:
	echo "No tests available"

all: install lint
	echo "All done"
