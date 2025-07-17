#!/bin/bash

git clone git@github.com:life4/textdistance.git
git checkout c3aca916bd756a8cb71114688b469ec90ef5b232
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e ".[benchmark,test]"
pip install pytest