#!/bin/bash

git clone git@github.com:facebookresearch/hydra.git
git checkout 0f03eb60c2ecd1fbdb25ede9a2c4faeac81de491
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements/dev.txt
pip install -e .
pip install pytest