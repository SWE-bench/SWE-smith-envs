#!/bin/bash

git clone git@github.com:PyCQA/flake8.git
git checkout cf1542cefa3e766670b2066dd75c4571d682a649
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r dev-requirements.txt
pip install -e .
pip install pytest