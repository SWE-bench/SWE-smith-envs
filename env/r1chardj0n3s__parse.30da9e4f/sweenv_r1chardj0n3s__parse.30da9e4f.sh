#!/bin/bash

git clone git@github.com:r1chardj0n3s/parse.git
git checkout 30da9e4f37fdd979487c9fe2673df35b6b204c72
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r tests/requirements.txt
pip install -e .
pip install pytest