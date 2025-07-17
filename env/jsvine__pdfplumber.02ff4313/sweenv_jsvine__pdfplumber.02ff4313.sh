#!/bin/bash

git clone git@github.com:jsvine/pdfplumber.git
git checkout 02ff4313f846380fefccec9c73fb4c8d8a80d0ee
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -r requirements-dev.txt
pip install -e .
pip install pytest