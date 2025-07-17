#!/bin/bash

git clone git@github.com:aio-libs/async-timeout.git
git checkout d0baa9f162b866e91881ae6cfa4d68839de96fb5
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest