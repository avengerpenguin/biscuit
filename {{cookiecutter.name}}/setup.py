#!/usr/bin/env python
from setuptools import setup


NAME="{{cookiecutter.name}}"
setup(
    name=NAME,
    use_scm_version={
        "local_scheme": "dirty-tag",
        "write_to": f"{NAME}/_version.py",
        "fallback_version": "0.0.0",
    },
    author="Ross Fenning",
    author_email="github@rossfenning.co.uk",
    packages=[NAME],
    description="{{cookiecutter.description}}",
    install_requires=[],
)
