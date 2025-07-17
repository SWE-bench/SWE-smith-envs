#!/bin/bash

git clone git@github.com:dbader/schedule.git
git checkout 82a43db1b938d8fdf60103bd41f329e06c8d3651
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements-dev.txt
pip install -e .
pip install pytest