.PHONY: lint test package ci

lint:
	npx eslint .

test:
	npm test

package: test
	npm pack

ci: lint test package
