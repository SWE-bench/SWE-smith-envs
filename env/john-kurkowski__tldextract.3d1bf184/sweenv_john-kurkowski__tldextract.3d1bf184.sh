#!/bin/bash

git clone git@github.com:john-kurkowski/tldextract.git
git checkout 3d1bf184d4f20fbdbadd6274560ccd438939160e
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[testing]
pip install pytest