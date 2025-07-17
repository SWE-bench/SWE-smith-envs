#!/bin/bash

git clone git@github.com:pallets/jinja.git
git checkout ada0a9a6fc265128b46949b5144d2eaa55e6df2c
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements/dev.txt
pip install -e .
pip install pytest