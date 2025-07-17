#!/bin/bash

git clone git@github.com:rsalmei/alive-progress.git
git checkout 35853799b84ee682af121f7bc5967bd9b62e34c4
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements/dev.txt
pip install -e .
pip install pytest