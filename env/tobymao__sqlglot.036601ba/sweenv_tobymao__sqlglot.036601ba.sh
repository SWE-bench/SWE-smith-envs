#!/bin/bash

git clone git@github.com:tobymao/sqlglot.git
git checkout 036601ba9cbe4d175d6a9d38bc27587eab858968
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e '.[dev]'
pip install pytest