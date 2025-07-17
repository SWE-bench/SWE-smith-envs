#!/bin/bash

git clone git@github.com:pydata/patsy.git
git checkout a5d1648401b0ea0649b077f4b98da27db947d2d0
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[test]
pip install pytest