#!/bin/bash

git clone git@github.com:adrienverge/yamllint.git
git checkout 8513d9b97da3b32453b3fccb221f4ab134a028d7
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest