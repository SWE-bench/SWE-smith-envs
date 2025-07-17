#!/bin/bash

git clone git@github.com:spulec/freezegun.git
git checkout 5f171db0aaa02c4ade003bbc8885e0bb19efbc81
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest