#!/bin/bash

git clone git@github.com:python-openxml/python-docx.git
git checkout 0cf6d71fb47ede07ecd5de2a8655f9f46c5f083d
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest