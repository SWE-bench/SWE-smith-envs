#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/bottlepy__bottle.a8dfef30 /testbed
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
      - alabaster==1.0.0
      - anyio==4.6.2.post1
      - babel==2.16.0
      - backports-tarfile==1.2.0
      - build==1.2.2.post1
      - certifi==2024.8.30
      - cffi==1.17.1
      - charset-normalizer==3.4.0
      - click==8.1.7
      - colorama==0.4.6
      - coverage==7.6.8
      - cryptography==44.0.0
      - docutils==0.21.2
      - exceptiongroup==1.2.2
      - h11==0.14.0
      - idna==3.10
      - imagesize==1.4.1
      - importlib-metadata==8.5.0
      - iniconfig==2.0.0
      - jaraco-classes==3.4.0
      - jaraco-context==6.0.1
      - jaraco-functools==4.1.0
      - jeepney==0.8.0
      - jinja2==3.1.4
      - keyring==25.5.0
      - markdown-it-py==3.0.0
      - markupsafe==3.0.2
      - mdurl==0.1.2
      - more-itertools==10.5.0
      - nh3==0.2.19
      - packaging==24.2
      - pkginfo==1.12.0
      - pluggy==1.5.0
      - pycparser==2.22
      - pygments==2.18.0
      - pyproject-hooks==1.2.0
      - pytest==8.3.4
      - pytest-cov==6.0.0
      - readme-renderer==44.0
      - requests==2.32.3
      - requests-toolbelt==1.0.0
      - rfc3986==2.0.0
      - rich==13.9.4
      - secretstorage==3.3.3
      - sniffio==1.3.1
      - snowballstemmer==2.2.0
      - sphinx==8.1.3
      - sphinx-autobuild==2024.10.3
      - sphinx-intl==2.3.1
      - sphinxcontrib-applehelp==2.0.0
      - sphinxcontrib-devhelp==2.0.0
      - sphinxcontrib-htmlhelp==2.1.0
      - sphinxcontrib-jsmath==1.0.1
      - sphinxcontrib-qthelp==2.0.0
      - sphinxcontrib-serializinghtml==2.0.0
      - starlette==0.41.3
      - tomli==2.2.1
      - twine==6.0.1
      - typing-extensions==4.12.2
      - urllib3==2.2.3
      - uvicorn==0.32.1
      - watchfiles==1.0.0
      - websockets==14.1
      - zipp==3.21.0
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
