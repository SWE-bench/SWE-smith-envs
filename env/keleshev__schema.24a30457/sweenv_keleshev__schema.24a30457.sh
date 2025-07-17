#!/bin/bash

git clone git@github.com:keleshev/schema.git
git checkout 24a3045773eac497c659f24b32f24a281be9f286
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest