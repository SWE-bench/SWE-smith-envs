#!/bin/bash

git clone git@github.com:facebookresearch/fvcore.git
git checkout a491d5b9a06746f387aca2f1f9c7c7f28e20bef9
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install torch shapely
rm tests/test_focal_loss.py
pip install -e .
pip install pytest