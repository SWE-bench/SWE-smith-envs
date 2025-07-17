#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/kurtmckee__feedparser.cad965a3 /testbed
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
      - babel==2.15.0
      - certifi==2024.7.4
      - charset-normalizer==3.3.2
      - coverage==7.6.1
      - docutils==0.20.1
      - exceptiongroup==1.2.2
      - idna==3.7
      - imagesize==1.4.1
      - iniconfig==2.0.0
      - jinja2==3.1.4
      - markupsafe==2.1.5
      - mypy==1.11.1
      - mypy-extensions==1.0.0
      - packaging==24.1
      - pluggy==1.5.0
      - pygments==2.18.0
      - pytest==8.3.2
      - pytest-randomly==3.15.0
      - pyyaml==6.0.1
      - requests==2.32.3
      - responses==0.25.3
      - sgmllib3k==1.0.0
      - snowballstemmer==2.2.0
      - sphinx==7.4.7
      - sphinx-rtd-theme==2.0.0
      - sphinxcontrib-applehelp==2.0.0
      - sphinxcontrib-devhelp==2.0.0
      - sphinxcontrib-htmlhelp==2.1.0
      - sphinxcontrib-jquery==4.1
      - sphinxcontrib-jsmath==1.0.1
      - sphinxcontrib-qthelp==2.0.0
      - sphinxcontrib-serializinghtml==2.0.0
      - tomli==2.0.1
      - types-chardet==5.0.4.6
      - types-requests==2.32.0.20240712
      - typing-extensions==4.12.2
      - urllib3==2.2.2
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
