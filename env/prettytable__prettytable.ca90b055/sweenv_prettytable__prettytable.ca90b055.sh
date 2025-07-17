#!/bin/bash

git clone git@github.com:prettytable/prettytable.git
git checkout ca90b055f20a6e8a06dcc46c2e3afe8ff1e8d0f1
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[tests]
pip install pytest