#!/bin/bash

git clone git@github.com:gruns/furl.git
git checkout da386f68b8d077086c25adfd205a4c3d502c3012
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest