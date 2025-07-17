#!/bin/bash

git clone git@github.com:theskumar/python-dotenv.git
git checkout 2b8635b79f1aa15cade0950117d4e7d12c298766
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest