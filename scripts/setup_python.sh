#! /usr/bin/bash

# OS: Ubuntu 22.04 LTS x86_64 
# Host: g4dn.xlarge 
# Kernel: 5.15.0-1011-aws 

sudo apt -y install python2 curl virtualenv python2-setuptools-whl python2-pip-whl
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python2 get-pip.py
virtualenv --python=python2 .venv_py2.7
. .venv_py2.7/bin/activate
