#!/bin/bash

git clone git@github.com:lepture/mistune.git
git checkout bf54ef67390e02a5cdee7495d4386d7770c1902b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install pytest pytest-cov
pip install -e .
pip install pytest