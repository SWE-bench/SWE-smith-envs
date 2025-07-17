#!/bin/bash

git clone git@github.com:kayak/pypika.git
git checkout 1c9646f0a019a167c32b649b6f5e6423c5ba2c9b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest