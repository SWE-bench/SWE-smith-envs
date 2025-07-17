#!/bin/bash

git clone git@github.com:dorianbrown/rank_bm25.git
git checkout 47aa3ddf8dc1ebeb7ef4e65f2b4536af44594099
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest