all: venv submodules

venv:
	python3 -m venv venv
	venv/bin/pip install 'cachi2 @ git+https://github.com/containerbuildsystem/cachi2'

.PHONY: submodules
submodules:
	git submodule update --init
