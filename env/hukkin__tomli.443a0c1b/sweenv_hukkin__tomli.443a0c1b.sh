#!/bin/bash

git clone git@github.com:hukkin/tomli.git
git checkout 443a0c1bc5da39b7ed84306912ee1900e6b72e2f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest