#!/bin/bash

git clone git@github.com:sunpy/sunpy.git
git checkout f8edfd5c4be873fbd28dec4583e7f737a045f546
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.11 -yq
conda activate testbed
pip install -e '.[dev]'
pip install pytest