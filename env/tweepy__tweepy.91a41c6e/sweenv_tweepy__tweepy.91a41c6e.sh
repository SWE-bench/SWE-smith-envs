#!/bin/bash

git clone git@github.com:tweepy/tweepy.git
git checkout 91a41c6e1c955d278c370d51d5cf43b05f7cd979
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e '.[dev,test,async]'
pip install pytest