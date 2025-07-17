#!/bin/bash

git clone git@github.com:pallets/markupsafe.git
git checkout 620c06c919c1bd7bb1ce3dbee402e1c0c56e7ac3
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements/dev.txt
pip install -e .
pip install pytest