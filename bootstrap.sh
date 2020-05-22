#!/bin/bash

set -e

if [[ ! -d venv ]]; then
	sudo apt-get install -y python3-venv python3-pip
	python3 -m venv venv
fi

./venv/bin/pip install -U pip setuptools
./venv/bin/pip install -U ansible ansible-lint wheel

sudo apt-get update
