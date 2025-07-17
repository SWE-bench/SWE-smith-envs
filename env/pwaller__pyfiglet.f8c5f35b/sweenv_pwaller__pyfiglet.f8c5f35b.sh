#!/bin/bash

git clone git@github.com:pwaller/pyfiglet.git
git checkout f8c5f35be70a4bbf93ac032334311b326bc61688
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r dev-requirements.txt
pip install -e .
pip install pytest