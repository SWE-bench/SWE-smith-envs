#!/bin/bash

git clone git@github.com:alanjds/drf-nested-routers.git
git checkout 6144169d5c33a1c5134b2fedac1d6cfa312c174e
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest