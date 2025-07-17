#!/bin/bash

git clone git@github.com:joke2k/faker.git
git checkout 8b401a7d68f5fda1276f36a8fc502ef32050ed72
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r dev-requirements.txt
pip install freezegun validators
pip install -e .
pip install pytest