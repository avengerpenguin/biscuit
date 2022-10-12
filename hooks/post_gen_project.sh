#!/bin/bash

TEMPLATE_DIR = '{{ cookiecutter._template}}'

cp "${TEMPLATE_DIR}/.pre-commit-config.yaml" ./
