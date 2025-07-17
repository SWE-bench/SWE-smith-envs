#!/bin/bash

git clone git@github.com:agronholm/typeguard.git
git checkout b6a7e4387c30a9f7d635712157c889eb073c1ea3
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[test,doc]
pip install pytest