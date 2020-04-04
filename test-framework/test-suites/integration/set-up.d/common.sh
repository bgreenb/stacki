#!/bin/bash

# Bail on script errors
set -e

# Install pytest-cov on the frontend
vagrant ssh frontend --no-tty -c "sudo -i /opt/stack/bin/python3 -m ensurepip"
vagrant ssh frontend --no-tty -c "sudo -i /opt/stack/bin/pip3 install pytest-cov==2.8.1 pytest-test-groups==1.0.3 pytest-timeout==1.3.3 coverage==4.5.4"
