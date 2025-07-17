#!/bin/bash

git clone git@github.com:pyparsing/pyparsing.git
git checkout 533adf471f85b570006871e60a2e585fcda5b085
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install railroad-diagrams Jinja2
pip install -e .
pip install pytest