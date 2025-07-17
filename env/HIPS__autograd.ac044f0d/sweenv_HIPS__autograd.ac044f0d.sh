#!/bin/bash

git clone git@github.com:HIPS/autograd.git
git checkout ac044f0de1185b725955595840135e9ade06aaed
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e '.[scipy,test]'
pip install pytest