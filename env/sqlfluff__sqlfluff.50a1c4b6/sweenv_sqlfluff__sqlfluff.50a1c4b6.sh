#!/bin/bash

git clone git@github.com:sqlfluff/sqlfluff.git
git checkout 50a1c4b6ff171188b6b70b39afe82a707b4919ac
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements_dev.txt
pip install -e .
pip install pytest