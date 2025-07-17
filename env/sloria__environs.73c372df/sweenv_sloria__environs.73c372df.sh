#!/bin/bash

git clone git@github.com:sloria/environs.git
git checkout 73c372df71002312615ad0349ae11274bb3edc69
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev]
pip install pytest