#!/bin/bash

git clone git@github.com:jax-ml/jax.git
git checkout ebd90e06fa7caad087e2342431e3899cfd2fdf98
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r build/test-requirements.txt
pip install -e ".[cpu]"
pip install pytest