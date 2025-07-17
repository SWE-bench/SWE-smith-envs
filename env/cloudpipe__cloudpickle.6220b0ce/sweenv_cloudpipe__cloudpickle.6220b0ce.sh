#!/bin/bash

git clone git@github.com:cloudpipe/cloudpickle.git
git checkout 6220b0ce83ffee5e47e06770a1ee38ca9e47c850
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r dev-requirements.txt
pip install -e .
pip install pytest