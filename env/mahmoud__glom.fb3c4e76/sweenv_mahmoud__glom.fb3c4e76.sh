#!/bin/bash

git clone git@github.com:mahmoud/glom.git
git checkout fb3c4e76f28816aebfd2538980e617742e98a7c2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest