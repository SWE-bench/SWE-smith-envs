#!/bin/bash

git clone git@github.com:arrow-py/arrow.git
git checkout 1d70d0091980ea489a64fa95a48e99b45f29f0e7
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .[test,doc]
pip install pytest