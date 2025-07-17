#!/bin/bash

git clone git@github.com:pyupio/safety.git
git checkout 7654596be933f8310b294dbc85a7af6066d06e4f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r test_requirements.txt
pip install -e .
pip install pytest