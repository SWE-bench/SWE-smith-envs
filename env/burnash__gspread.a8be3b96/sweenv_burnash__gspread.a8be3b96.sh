#!/bin/bash

git clone git@github.com:burnash/gspread.git
git checkout a8be3b96f9276779ab680d84a0982282fb184000
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r test-requirements.txt
pip install -e .
pip install pytest