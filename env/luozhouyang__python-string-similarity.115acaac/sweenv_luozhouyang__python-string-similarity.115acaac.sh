#!/bin/bash

git clone git@github.com:luozhouyang/python-string-similarity.git
git checkout 115acaacf926b41a15664bd34e763d074682bda3
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest