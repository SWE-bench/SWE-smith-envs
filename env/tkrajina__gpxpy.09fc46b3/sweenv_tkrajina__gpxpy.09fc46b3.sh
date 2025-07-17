#!/bin/bash

git clone git@github.com:tkrajina/gpxpy.git
git checkout 09fc46b3cad16b5bf49edf8e7ae873794a959620
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest