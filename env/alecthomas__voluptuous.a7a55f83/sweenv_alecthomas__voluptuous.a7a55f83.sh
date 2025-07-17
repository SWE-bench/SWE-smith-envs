#!/bin/bash

git clone git@github.com:alecthomas/voluptuous.git
git checkout a7a55f83b9fa7ba68b0669b3d78a61de703e0a16
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install pytest pytest-cov coverage
pip install -e .
pip install pytest