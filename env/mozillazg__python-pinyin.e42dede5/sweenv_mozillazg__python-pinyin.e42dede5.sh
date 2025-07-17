#!/bin/bash

git clone git@github.com:mozillazg/python-pinyin.git
git checkout e42dede51abbc40e225da9a8ec8e5bd0043eed21
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements_dev.txt
pip install -e .
pip install pytest