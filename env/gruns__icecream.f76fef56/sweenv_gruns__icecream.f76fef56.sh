#!/bin/bash

git clone git@github.com:gruns/icecream.git
git checkout f76fef56b66b59fd9a89502c60a99fbe28ee36bd
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest