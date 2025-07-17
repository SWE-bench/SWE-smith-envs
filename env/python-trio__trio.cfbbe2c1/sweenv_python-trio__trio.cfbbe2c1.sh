#!/bin/bash

git clone git@github.com:python-trio/trio.git
git checkout cfbbe2c1f96e93b19bc2577d2cab3f4fe2e81153
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install -r test-requirements.txt
pip install pytest