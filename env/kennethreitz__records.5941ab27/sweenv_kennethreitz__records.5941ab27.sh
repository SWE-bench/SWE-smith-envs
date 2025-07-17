#!/bin/bash

git clone git@github.com:kennethreitz/records.git
git checkout 5941ab2798cb91455b6424a9564c9cd680475fbe
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest