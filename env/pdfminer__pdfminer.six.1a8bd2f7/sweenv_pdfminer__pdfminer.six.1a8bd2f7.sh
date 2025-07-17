#!/bin/bash

git clone git@github.com:pdfminer/pdfminer.six.git
git checkout 1a8bd2f730295b31d6165e4d95fcb5a03793c978
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e '.[dev]'
pip install pytest