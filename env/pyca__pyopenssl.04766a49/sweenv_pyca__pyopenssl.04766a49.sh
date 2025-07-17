#!/bin/bash

git clone git@github.com:pyca/pyopenssl.git
git checkout 04766a496eb11f69f6226a5a0dfca4db90a5cbd1
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .[test]
pip install pytest