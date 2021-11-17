export PIPENV_VENV_IN_PROJECT := true

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
	@[ -f .git/hooks/pre-commit ] || pipenv run pre-commit install

clean:
	$(call hr)
	@pipenv --rm

lint:
	$(call hr)
	@pipenv run molecule lint

test:
	$(call hr)
	@pipenv run molecule test --all

update:
	$(call hr)
	@pipenv update --dev
	@pipenv run pre-commit autoupdate

security:
	$(call hr)
	@pipenv check

.PHONY: all install lint test update clean security
