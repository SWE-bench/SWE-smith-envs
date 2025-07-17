#!/bin/bash

git clone git@github.com:pytest-dev/iniconfig.git
git checkout 16793eaddac67de0b8d621ae4e42e05b927e8d67
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest