#!/bin/sh

BISCUIT="$PWD/{{cookiecutter.name}}"

if [ -n "${GITHUB_WORKSPACE}" ]; then
  cd "${GITHUB_WORKSPACE}" || exit1
fi

set -ex

tree

# First pass; check for expected files
test -f README.md
test -f setup.py
test -f tox.ini
test -f pyproject.toml
test -f .pre-commit-config.yaml
test -f .github/workflows/python.yml

# Opinionated Python stuff now
grep use_scm_version setup.py
grep pre-commit setup.py

# Files we don't expect to change
diff "${BISCUIT}/.pre-commit-config.yaml" .pre-commit-config.yaml
diff "${BISCUIT}/pyproject.toml" pyproject.toml
diff "${BISCUIT}/tox.ini" tox.ini
