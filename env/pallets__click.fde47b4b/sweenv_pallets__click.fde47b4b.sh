#!/bin/bash

git clone git@github.com:pallets/click.git
git checkout fde47b4b4f978f179b9dff34583cb2b99021f482
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest