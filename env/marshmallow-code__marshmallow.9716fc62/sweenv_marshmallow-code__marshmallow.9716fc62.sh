#!/bin/bash

git clone git@github.com:marshmallow-code/marshmallow.git
git checkout 9716fc629976c9d3ce30cd15d270d9ac235eb725
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e '.[dev]'
pip install pytest