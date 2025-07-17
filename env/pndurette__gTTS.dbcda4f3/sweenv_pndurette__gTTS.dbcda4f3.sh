#!/bin/bash

git clone git@github.com:pndurette/gTTS.git
git checkout dbcda4f396074427172d4a1f798a172686ace6e0
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[tests]
pip install pytest