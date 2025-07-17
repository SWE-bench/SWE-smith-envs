#!/bin/bash

git clone git@github.com:weaveworks/grafanalib.git
git checkout 5c3b17edaa437f0bc09b5f1b9275dc8fb91689fb
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest