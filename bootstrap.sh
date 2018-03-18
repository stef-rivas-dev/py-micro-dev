#!/usr/bin/env bash

apt-get update

# Installation
apt-get install -y \
apache2 \
mariadb-client-core-10.0 \
python-pip \
python3 \
python3-venv

# Status checks, post-install mods
if ! [ -L /var/www ]; then
    rm -rf /var/www
    ln -fs /vagrant /var/www
fi
