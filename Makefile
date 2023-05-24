print:
	@python3 apigen/version.py

setup: versions
	git config core.hooksPath githooks

edit:
	$${EDITOR:-vim} .mvn/maven.config

versions:
	@python3 apigen/version.py mvn

.PHONY: print setup versions
