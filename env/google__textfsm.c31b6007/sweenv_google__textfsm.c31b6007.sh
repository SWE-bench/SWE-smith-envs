#!/bin/bash

git clone git@github.com:google/textfsm.git
git checkout c31b600743895f018e7583f93405a3738a9f4d55
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest