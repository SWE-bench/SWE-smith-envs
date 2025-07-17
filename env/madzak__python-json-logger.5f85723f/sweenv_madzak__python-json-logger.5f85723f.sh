#!/bin/bash

git clone git@github.com:madzak/python-json-logger.git
git checkout 5f85723f4693c7289724fdcda84cfc0b62da74d4
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest