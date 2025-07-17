#!/bin/bash

git clone git@github.com:cookiecutter/cookiecutter.git
git checkout b4451231809fb9e4fc2a1e95d433cb030e4b9e06
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r test_requirements.txt
pip install -e .
pip install pytest