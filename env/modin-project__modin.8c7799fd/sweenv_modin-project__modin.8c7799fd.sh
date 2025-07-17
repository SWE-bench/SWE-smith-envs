#!/bin/bash

git clone git@github.com:modin-project/modin.git
git checkout 8c7799fdbbc2fb0543224160dd928215852b7757
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
 pip install -e ".[all]"
pip install -r requirements-dev.txt
pip install pytest