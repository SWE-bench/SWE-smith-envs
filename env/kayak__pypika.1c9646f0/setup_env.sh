#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/kayak__pypika.1c9646f0 /testbed
cd /testbed
source /opt/miniconda3/bin/activate
cat <<'EOF_59812759871' > swesmith_environment.yml
name: testbed
channels:
  - defaults
dependencies:
  - _libgcc_mutex=0.1=main
  - _openmp_mutex=5.1=1_gnu
  - bzip2=1.0.8=h5eee18b_6
  - ca-certificates=2024.11.26=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.15=h5eee18b_0
  - pip=24.2=py310h06a4308_0
  - python=3.10.15=he870216_1
  - readline=8.2=h5eee18b_0
  - setuptools=75.1.0=py310h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2024b=h04d1e81_0
  - wheel=0.44.0=py310h06a4308_0
  - xz=5.4.6=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - alabaster==0.7.16
      - babel==2.16.0
      - bumpversion==0.5.3
      - certifi==2024.8.30
      - charset-normalizer==3.4.0
      - coverage==5.1
      - distlib==0.3.9
      - docutils==0.21.2
      - exceptiongroup==1.2.2
      - filelock==3.16.1
      - idna==3.10
      - imagesize==1.4.1
      - iniconfig==2.0.0
      - jinja2==3.0.3
      - markupsafe==3.0.2
      - numpydoc==1.1.0
      - packaging==24.2
      - parameterized==0.7.0
      - platformdirs==4.3.6
      - pluggy==1.5.0
      - py==1.11.0
      - pygments==2.18.0
      - pytest==8.3.4
      - requests==2.32.3
      - six==1.17.0
      - snowballstemmer==2.2.0
      - sphinx==1.6.5
      - sphinx-rtd-theme==0.2.4
      - sphinxcontrib-serializinghtml==2.0.0
      - sphinxcontrib-websupport==1.2.4
      - toml==0.10.2
      - tomli==2.2.1
      - urllib3==2.2.3
      - virtualenv==20.28.0
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
