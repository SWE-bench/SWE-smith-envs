#!/bin/bash

git clone git@github.com:django/daphne.git
git checkout 32ac73e1a0fb87af0e3280c89fe4cc3ff1231b37
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[tests]
pip install pytest