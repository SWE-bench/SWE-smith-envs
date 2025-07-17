#!/bin/bash

git clone git@github.com:pandas-dev/pandas.git
git checkout 95280573e15be59036f98d82a8792599c10c6603
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
git remote add upstream https://github.com/pandas-dev/pandas.git
git fetch upstream --tags
python -m pip install -ve . --no-build-isolation -Ceditable-verbose=true
pip uninstall pytest-qt -y
sed -i 's/__version__="[^"]*"/__version__="3.0.0.dev0+1992.g95280573e1"/' build/cp310/_version_meson.py
pip install pytest