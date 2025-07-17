#!/bin/bash

git clone git@github.com:cantools/cantools.git
git checkout 0c6a78711409e4307de34582f795ddb426d58dd8
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev,plot]
pip install pytest-cov parameterized
pip install pytest