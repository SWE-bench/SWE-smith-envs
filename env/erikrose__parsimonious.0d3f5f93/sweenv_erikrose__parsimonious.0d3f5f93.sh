#!/bin/bash

git clone git@github.com:erikrose/parsimonious.git
git checkout 0d3f5f93c98ae55707f0958366900275d1ce094f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[testing]
pip install pytest