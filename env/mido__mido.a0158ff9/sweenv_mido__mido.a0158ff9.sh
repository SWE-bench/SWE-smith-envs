#!/bin/bash

git clone git@github.com:mido/mido.git
git checkout a0158ff95a08f9a4eef628a2e7c793fd3a466640
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[dev]
pip install pytest