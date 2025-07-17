#!/bin/bash

git clone git@github.com:django/channels.git
git checkout a144b4b8881a93faa567a6bdf2d7f518f4c16cd2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[tests,daphne]
pip install pytest