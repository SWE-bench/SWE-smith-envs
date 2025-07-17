#!/bin/bash

git clone git@github.com:getnikola/nikola.git
git checkout 0f4c230e5159e4e937463eb8d6d2ddfcbb09def2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e '.[extras,tests]'
pip install pytest