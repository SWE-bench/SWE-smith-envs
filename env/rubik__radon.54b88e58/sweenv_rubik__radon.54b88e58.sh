#!/bin/bash

git clone git@github.com:rubik/radon.git
git checkout 54b88e5878b2724bf4d77f97349588b811abdff2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r test_requirements.txt
pip install -r requirements.txt
pip install -e .
pip install pytest