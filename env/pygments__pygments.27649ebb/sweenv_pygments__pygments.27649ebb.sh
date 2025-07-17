#!/bin/bash

git clone git@github.com:pygments/pygments.git
git checkout 27649ebbf5a2519725036b48ec99ef7745f100af
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install pytest pytest-cov pytest-randomly wcag-contrast-ratio
pip install -r requirements.txt
pip install -e .
pip install pytest