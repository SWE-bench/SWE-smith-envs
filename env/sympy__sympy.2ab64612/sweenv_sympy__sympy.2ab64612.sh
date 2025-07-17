#!/bin/bash

git clone git@github.com:sympy/sympy.git
git checkout 2ab64612efb287f09822419f4127878a4b664f71
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest