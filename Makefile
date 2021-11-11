.PHONY: test lint clean

test: clean
	@ansible-playbook tests/test.yml -i tests/inventory

lint:
	@yamllint .
	@ansible-lint .

clean:
	@rm -f tests/*.deleteme
