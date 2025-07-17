#!/bin/bash

git clone git@github.com:scanny/python-pptx.git
git checkout 278b47b1dedd5b46ee84c286e77cdfb0bf4594be
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest