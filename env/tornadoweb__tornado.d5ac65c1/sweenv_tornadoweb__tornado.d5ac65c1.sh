#!/bin/bash

git clone git@github.com:tornadoweb/tornado.git
git checkout d5ac65c1f1453c2aeddd089d8e68c159645c13e1
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest