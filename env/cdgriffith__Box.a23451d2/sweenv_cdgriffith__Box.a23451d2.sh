#!/bin/bash

git clone git@github.com:cdgriffith/Box.git
git checkout a23451d2869a511280eebe194efca41efadd2706
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -r requirements-test.txt
pip install -e .
pip install pytest