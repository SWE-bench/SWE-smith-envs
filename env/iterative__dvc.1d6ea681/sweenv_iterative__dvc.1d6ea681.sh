#!/bin/bash

git clone git@github.com:iterative/dvc.git
git checkout 1d6ea68133289ceab2637ce7095772678af792c6
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e ".[dev]"
pip install pytest