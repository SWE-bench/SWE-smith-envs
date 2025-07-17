#!/bin/bash

git clone git@github.com:jaraco/inflect.git
git checkout c079a96a573ece60b54bd5210bb0f414beb74dcd
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest