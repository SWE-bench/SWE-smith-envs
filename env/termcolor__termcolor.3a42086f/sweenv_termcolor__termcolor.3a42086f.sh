#!/bin/bash

git clone git@github.com:termcolor/termcolor.git
git checkout 3a42086feb35647bc5aa5f1065b0327200da6b9b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
python3 -m pip install -e .
pip install pytest-cov
pip install pytest