#!/bin/bash

# TODO: make this dynamic
machine=ubuntu

EXTRA_ARGS=$@

echo "Provisioning ${machine}"

if [[ ! -d ./venv ]]; then
    echo "virtualenv not found, running bootstrap script"
    ./bootstrap.sh
fi

./venv/bin/ansible-playbook -i inventory site.yml --limit $machine -c local --ask-become-pass -v ${EXTRA_ARGS}
