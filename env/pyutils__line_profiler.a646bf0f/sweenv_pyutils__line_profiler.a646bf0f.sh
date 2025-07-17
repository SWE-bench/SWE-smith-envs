#!/bin/bash

git clone git@github.com:pyutils/line_profiler.git
git checkout a646bf0f9ab3d15264a1be14d0d4ee6894966f6a
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest