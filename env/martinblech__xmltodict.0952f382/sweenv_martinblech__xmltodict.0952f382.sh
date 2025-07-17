#!/bin/bash

git clone git@github.com:martinblech/xmltodict.git
git checkout 0952f382c2340bc8b86a5503ba765a35a49cf7c4
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest