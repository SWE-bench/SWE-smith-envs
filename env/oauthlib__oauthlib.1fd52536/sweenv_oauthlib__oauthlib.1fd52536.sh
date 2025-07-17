#!/bin/bash

git clone git@github.com:oauthlib/oauthlib.git
git checkout 1fd5253630c03e3f12719dd8c13d43111f66a8d2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements.txt
pip install -r requirements-test.txt
pip install -e .
pip install pytest