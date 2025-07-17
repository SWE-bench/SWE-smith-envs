#!/bin/bash

git clone git@github.com:marshmallow-code/apispec.git
git checkout 8b421526ea1015046de42599dd93da6a3473fe44
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev]
pip install pytest