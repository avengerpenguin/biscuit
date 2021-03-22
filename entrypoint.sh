#!/bin/sh

BISCUIT="/biscuit/{{cookiecutter.name}}"

set -ex

pwd
tree

# First pass; check for expected files
test -f README.md || test -f README.rst
test -f setup.py
test -f tox.ini
test -f pyproject.toml
test -f .pre-commit-config.yaml
test -f .github/workflows/python.yml

# Opinionated Python stuff now
grep use_scm_version setup.py
grep pre-commit setup.py

# Files we don't expect to change
diff "${BISCUIT}/pyproject.toml" pyproject.toml
diff "${BISCUIT}/tox.ini" tox.ini
diff "${BISCUIT}/mypy.ini" mypy.ini
diff "${BISCUIT}/.github/workflows/biscuit.yml" .github/workflows/biscuit.yml
diff "${BISCUIT}/.github/workflows/python.yml" .github/workflows/python.yml
