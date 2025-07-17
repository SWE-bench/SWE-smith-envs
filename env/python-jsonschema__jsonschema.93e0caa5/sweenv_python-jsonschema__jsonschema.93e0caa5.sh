#!/bin/bash

git clone git@github.com:python-jsonschema/jsonschema.git
git checkout 93e0caa5752947ec77333da81a634afe41a022ed
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest