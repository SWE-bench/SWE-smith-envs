#!/bin/bash

git clone git@github.com:pudo/dataset.git
git checkout 5c2dc8d3af1e0af0290dcd7ae2cae92589f305a1
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
python setup.py install
pip install pytest