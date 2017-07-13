NAME := berryinfo
VERSION := 0.0.5

.PHONY: build-docs
build-docs:
	pandoc --from=markdown --to=rst --output=README.rst README.md

.PHONY: build
build:
	python setup.py bdist_wheel --universal

.PHONY: upload-pypi
upload-pypi:
	twine upload dist/${NAME}-${VERSION}-py2.py3-none-any.whl