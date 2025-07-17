#!/bin/bash

git clone git@github.com:mewwts/addict.git
git checkout 75284f9593dfb929cadd900aff9e35e7c7aec54b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest