#!/bin/bash

git clone git@github.com:cool-RR/PySnooper.git
git checkout 57472b4677b6c041647950f28f2d5750c38326c6
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[tests]
pip install pytest