#!/bin/bash

git clone git@github.com:Knio/dominate.git
git checkout 9082227e93f5a370012bb934286caf7385d3e7ac
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest