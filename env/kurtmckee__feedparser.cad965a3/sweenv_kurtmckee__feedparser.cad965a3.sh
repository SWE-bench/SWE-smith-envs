#!/bin/bash

git clone git@github.com:kurtmckee/feedparser.git
git checkout cad965a3f52c4b077221a2142fb14ef7f68cd576
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements/docs/requirements.txt
pip install -r requirements/mypy/requirements.txt
pip install -r requirements/test/requirements.txt
pip install -e .
pip install pytest