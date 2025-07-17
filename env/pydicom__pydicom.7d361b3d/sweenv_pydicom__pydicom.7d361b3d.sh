#!/bin/bash

git clone git@github.com:pydicom/pydicom.git
git checkout 7d361b3d764dbbb1f8ad7af015e80ce96f6bf286
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.11 -y
conda activate testbed
pip install -e .
pip install pytest