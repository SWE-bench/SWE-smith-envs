#!/bin/bash

git clone git@github.com:graphql-python/graphene.git
git checkout 82903263080b3b7f22c2ad84319584d7a3b1a1f6
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e ".[test]"
pip install pytest