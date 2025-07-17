#!/bin/bash

git clone git@github.com:mozilla/bleach.git
git checkout 73871d766de1e33a296eeb4f9faf2451f28bee39
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest