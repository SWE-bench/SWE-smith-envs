#!/bin/bash

git clone git@github.com:datamade/usaddress.git
git checkout a42a8f0c14bd2e273939fd51c604f10826301e73
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev]
pip install pytest