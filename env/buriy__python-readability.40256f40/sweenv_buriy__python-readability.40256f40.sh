#!/bin/bash

git clone git@github.com:buriy/python-readability.git
git checkout 40256f40389c1f97be5e83d7838547581653c6aa
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt -e '.[test]'
pip install pytest