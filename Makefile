export PIPENV_VENV_IN_PROJECT := true
export ANSIBLE_ROLES_PATH := ${PWD}/../..

define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef

all: install security test

install:
	$(call hr)
	@command -v python3 2>&1 >/dev/null || echo "Please install python3!"
	@command -v pipenv  2>&1 >/dev/null || pip3 install pipenv
	@which pip3 | grep -q 'shim' && asdf reshim python || true
	@pipenv install --dev
	@pipenv run pre-commit install \
		--hook-type pre-commit \
		--hook-type commit-msg \
		--hook-type pre-push

## remove our pipenv environment
clean:
	$(call hr)
	@pipenv --rm

## only run the linter, no testing
lint:
	$(call hr)
	@pipenv run molecule lint

## molecule test already does linting
test:
	$(call hr)
	@pipenv run molecule test --all

## Update pipenv dependencies along with pre-commit
update:
	$(call hr)
	@pipenv update --dev
	@pipenv run pre-commit autoupdate

## Test for known vulnerabilities in our pipenv environment
security:
	$(call hr)
	@pipenv check

## Spin up a molecule instance
create:
	@pipenv run molecule create

## Converge the role
converge: create
	$(call hr)
	@pipenv run molecule converge

## Destroy the instance
destroy:
	@pipenv run molecule destroy

## Run the role on localhost
run:
	$(call hr)
	@ansible-playbook -v tests/test.yml -i tests/inventory

.PHONY: all install lint test update clean security converge destroy run
