#!/bin/bash

git clone git@github.com:matthewwithanm/python-markdownify.git
git checkout 6258f5c38b97ab443b4ddf03e6676ce29b392d06
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest