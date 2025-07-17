#!/bin/bash

git clone git@github.com:stanfordnlp/dspy.git
git checkout 651a4c715ecc6c5e68b68d22172768f0b20f2eea
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.11 -yq
conda activate testbed
#!/bin/bash
pip install -e '.[dev]';
pip install pytest
