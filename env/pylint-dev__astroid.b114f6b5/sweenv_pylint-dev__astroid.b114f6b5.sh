#!/bin/bash

git clone git@github.com:pylint-dev/astroid.git
git checkout b114f6b58e749b8ab47f80490dce73ea80d8015f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements_full.txt
pip install -e .
pip install pytest