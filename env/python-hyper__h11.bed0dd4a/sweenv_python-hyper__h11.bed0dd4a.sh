#!/bin/bash

git clone git@github.com:python-hyper/h11.git
git checkout bed0dd4ae9774b962b19833941bb9ec4dc403da9
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r test-requirements.txt
pip install -r format-requirements.txt
pip install -e .
pip install pytest