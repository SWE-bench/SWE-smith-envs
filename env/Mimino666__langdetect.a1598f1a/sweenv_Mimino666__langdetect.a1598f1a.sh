#!/bin/bash

git clone git@github.com:Mimino666/langdetect.git
git checkout a1598f1afcbfe9a758cfd06bd688fbc5780177b2
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest