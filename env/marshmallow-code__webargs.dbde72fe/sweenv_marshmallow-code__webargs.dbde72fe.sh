#!/bin/bash

git clone git@github.com:marshmallow-code/webargs.git
git checkout dbde72fe5db8a999acd1716d5ef855ab7cc1a274
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev]
pip install pytest