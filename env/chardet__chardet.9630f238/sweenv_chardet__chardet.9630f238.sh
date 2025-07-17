#!/bin/bash

git clone git@github.com:chardet/chardet.git
git checkout 9630f2382faa50b81be2f96fd3dfab5f6739a0ef
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest