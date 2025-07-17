#!/bin/bash

git clone git@github.com:rustedpy/result.git
git checkout 0b855e1e38a08d6f0a4b0138b10c127c01e54ab4
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest