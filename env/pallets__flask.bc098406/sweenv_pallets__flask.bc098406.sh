#!/bin/bash

git clone git@github.com:pallets/flask.git
git checkout bc098406af9537aacc436cb2ea777fbc9ff4c5aa
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest