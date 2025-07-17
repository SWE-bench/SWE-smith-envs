#!/bin/bash

git clone git@github.com:benoitc/gunicorn.git
git checkout bacbf8aa5152b94e44aa5d2a94aeaf0318a85248
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements_dev.txt
pip install -e .
pip install pytest