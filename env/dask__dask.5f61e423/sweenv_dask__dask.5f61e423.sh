#!/bin/bash

git clone git@github.com:dask/dask.git
git checkout 5f61e42324c3a6cd4da17b5d5ebe4663aa4b8783
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
python -m pip install -e ".[complete,test]"
python -m pip install requests xarray SQLAlchemy h5py graphviz mimesis SQLAlchemy scipy sparse tiledb zarr
pip install pytest