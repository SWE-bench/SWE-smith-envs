#!/bin/bash

git clone git@github.com:vi3k6i5/flashtext.git
git checkout b316c7e9e54b6b4d078462b302a83db85f884a94
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest