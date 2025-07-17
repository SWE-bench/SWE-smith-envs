#!/bin/bash

git clone git@github.com:gawel/pyquery.git
git checkout 811cd048ffbe4e69fdc512863671131f98d691fb
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[test]
pip install pytest