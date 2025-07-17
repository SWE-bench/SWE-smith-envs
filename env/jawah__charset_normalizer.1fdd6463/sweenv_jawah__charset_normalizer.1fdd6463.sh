#!/bin/bash

git clone git@github.com:jawah/charset_normalizer.git
git checkout 1fdd64633572040ab60e62e8b24f29cb7e17660b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r dev-requirements.txt
pip install -e .
pip install pytest