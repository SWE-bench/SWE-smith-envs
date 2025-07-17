#!/bin/bash

git clone git@github.com:cknd/stackprinter.git
git checkout 219fcc522fa5fd6e440703358f6eb408f3ffc007
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install numpy
python setup.py install
pip install -e .
pip install pytest