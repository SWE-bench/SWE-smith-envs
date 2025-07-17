#!/bin/bash

git clone git@github.com:facelessuser/soupsieve.git
git checkout a8080d97a0355e316981cb0c5c887a861c4244e3
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements/tests.txt
pip install -e .
pip install pytest