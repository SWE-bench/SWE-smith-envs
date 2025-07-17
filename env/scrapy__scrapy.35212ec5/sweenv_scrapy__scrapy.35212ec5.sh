#!/bin/bash

git clone git@github.com:scrapy/scrapy.git
git checkout 35212ec5b05a3af14c9f87a6193ab24e33d62f9f
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
sudo apt-get install libxml2-dev libxslt-dev libjpeg-dev
pip install sybil testfixtures pexpect pygments
pip install -e .
rm tests/test_feedexport.py
rm tests/test_pipeline_files.py
pip install pytest