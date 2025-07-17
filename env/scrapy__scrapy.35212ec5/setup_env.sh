#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/scrapy__scrapy.35212ec5 /testbed
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
  - ca-certificates=2025.2.25=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.16=h5eee18b_0
  - pip=25.0=py310h06a4308_0
  - python=3.10.16=he870216_1
  - readline=8.2=h5eee18b_0
  - setuptools=75.8.0=py310h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2025a=h04d1e81_0
  - wheel=0.45.1=py310h06a4308_0
  - xz=5.6.4=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - attrs==25.1.0
      - automat==24.8.1
      - certifi==2025.1.31
      - cffi==1.17.1
      - charset-normalizer==3.4.1
      - constantly==23.10.4
      - cryptography==44.0.2
      - cssselect==1.2.0
      - defusedxml==0.7.1
      - exceptiongroup==1.2.2
      - filelock==3.17.0
      - hyperlink==21.0.0
      - idna==3.10
      - incremental==24.7.2
      - iniconfig==2.0.0
      - itemadapter==0.11.0
      - itemloaders==1.3.2
      - jmespath==1.0.1
      - lxml==5.3.1
      - packaging==24.2
      - parsel==1.10.0
      - pexpect==4.9.0
      - pluggy==1.5.0
      - protego==0.4.0
      - ptyprocess==0.7.0
      - pyasn1==0.6.1
      - pyasn1-modules==0.4.1
      - pycparser==2.22
      - pydispatcher==2.0.7
      - pygments==2.19.1
      - pyopenssl==25.0.0
      - pytest==8.3.5
      - queuelib==1.7.0
      - requests==2.32.3
      - requests-file==2.1.0
      - service-identity==24.2.0
      - sybil==9.1.0
      - testfixtures==8.3.0
      - tldextract==5.1.3
      - tomli==2.2.1
      - twisted==24.11.0
      - typing-extensions==4.12.2
      - urllib3==2.3.0
      - w3lib==2.3.1
      - zope-interface==7.2
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
apt-get update && apt-get install -y libxml2-dev libxslt-dev libjpeg-dev
python -m pip install -e .
rm tests/test_feedexport.py
rm tests/test_pipeline_files.py
