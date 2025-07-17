#!/bin/bash

git clone git@github.com:amueller/word_cloud.git
git checkout ec24191c64570d287032c5a4179c38237cd94043
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest