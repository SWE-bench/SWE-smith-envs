#!/bin/bash

git clone git@github.com:gweis/isodate.git
git checkout 17cb25eb7bc3556a68f3f7b241313e9bb8b23760
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest