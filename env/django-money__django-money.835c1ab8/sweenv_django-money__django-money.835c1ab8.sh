#!/bin/bash

git clone git@github.com:django-money/django-money.git
git checkout 835c1ab867d11137b964b94936692bea67a038ec
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[test,exchange]
pip install pytest