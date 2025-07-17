#!/bin/bash

git clone git@github.com:un33k/python-slugify.git
git checkout 872b37509399a7f02e53f46ad9881f63f66d334b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r dev.requirements.txt
pip install -e .
pip install pytest