#!/bin/bash

git clone git@github.com:Instagram/MonkeyType.git
git checkout 70c3acf62950be5dfb28743c7a719bfdecebcd84
#!/bin/bash
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .
pip install pytest
