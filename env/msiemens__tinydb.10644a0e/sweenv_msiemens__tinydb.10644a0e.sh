#!/bin/bash

git clone git@github.com:msiemens/tinydb.git
git checkout 10644a0e07ad180c5b756aba272ee6b0dbd12df8
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
poetry install
pip install pytest