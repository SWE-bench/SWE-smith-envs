#!/bin/bash

git clone git@github.com:getmoto/moto.git
git checkout 694ce1f4880c784fed0553bc19b2ace6691bc109
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.12 -yq
conda activate testbed
make init
pip install pytest