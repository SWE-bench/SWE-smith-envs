#!/bin/bash

git clone git@github.com:pyasn1/pyasn1.git
git checkout 0f07d7242a78ab4d129b26256d7474f7168cf536
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r devel-requirements.txt
pip install -e .
pip install pytest