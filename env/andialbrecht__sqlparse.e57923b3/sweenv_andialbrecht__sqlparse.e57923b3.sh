#!/bin/bash

git clone git@github.com:andialbrecht/sqlparse.git
git checkout e57923b3aa823c524c807953cecc48cf6eec2cb2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest