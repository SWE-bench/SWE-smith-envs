#!/bin/bash

git clone git@github.com:jd/tenacity.git
git checkout 0d40e76f7d06d631fb127e1ec58c8bd776e70d49
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[doc,test]
pip install pytest