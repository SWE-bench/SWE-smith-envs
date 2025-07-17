#!/bin/bash

git clone git@github.com:mahmoud/boltons.git
git checkout 3bfcfdd04395b6cc74a5c0cdc72c8f64cc4ac01f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements-test.txt
pip install -e .
pip install pytest