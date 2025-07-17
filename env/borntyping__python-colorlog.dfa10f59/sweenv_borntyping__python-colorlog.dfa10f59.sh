#!/bin/bash

git clone git@github.com:borntyping/python-colorlog.git
git checkout dfa10f59186d3d716aec4165ee79e58f2265c0eb
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest