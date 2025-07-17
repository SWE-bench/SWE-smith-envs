#!/bin/bash

git clone git@github.com:paramiko/paramiko.git
git checkout 23f92003898b060df0e2b8b1d889455264e63a3e
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r dev-requirements.txt
pip install -e .
pip install pytest