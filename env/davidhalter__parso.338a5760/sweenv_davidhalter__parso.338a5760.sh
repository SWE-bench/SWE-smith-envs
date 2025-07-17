#!/bin/bash

git clone git@github.com:davidhalter/parso.git
git checkout 338a57602740ad0645b2881e8c105ffdc959e90d
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
python setup.py install
pip install pytest