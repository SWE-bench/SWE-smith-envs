#!/bin/bash

git clone git@github.com:bottlepy/bottle.git
git checkout a8dfef301dec35f13e7578306002c40796651629
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e '.[dev]'
pip install pytest