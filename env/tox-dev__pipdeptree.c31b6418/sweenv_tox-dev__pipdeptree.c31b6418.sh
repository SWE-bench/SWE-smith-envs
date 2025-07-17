#!/bin/bash

git clone git@github.com:tox-dev/pipdeptree.git
git checkout c31b641817f8235df97adf178ffd8e4426585f7a
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[test,graphviz]
sudo apt-get update && sudo apt-get install graphviz -y
pip install graphviz
pip install pytest