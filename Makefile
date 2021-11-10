.PHONY: test lint

test:
	@ansible-playbook tests/test.yml -i tests/inventory

lint:
	@yamllint .
	@ansible-lint .

clean:
	@rm tests/*.deleteme
