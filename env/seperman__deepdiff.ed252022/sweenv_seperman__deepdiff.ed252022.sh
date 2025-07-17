#!/bin/bash

git clone git@github.com:seperman/deepdiff.git
git checkout ed2520229d0369813f6e54cdf9c7e68e8073ef62
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest