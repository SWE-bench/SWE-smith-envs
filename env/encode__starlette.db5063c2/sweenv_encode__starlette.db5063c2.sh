#!/bin/bash

git clone git@github.com:encode/starlette.git
git checkout db5063c26030e019f7ee62aef9a1b564eca9f1d6
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest