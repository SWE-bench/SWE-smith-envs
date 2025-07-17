#!/bin/bash

git clone git@github.com:Suor/funcy.git
git checkout 207a7810c216c7408596d463d3f429686e83b871
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r test_requirements.txt
pip install -e .
pip install pytest