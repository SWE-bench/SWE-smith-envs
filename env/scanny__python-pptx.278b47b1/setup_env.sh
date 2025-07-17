#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/scanny__python-pptx.278b47b1 /testbed
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
      - backports-tarfile==1.2.0
      - behave==1.2.6
      - build==1.2.2.post1
      - cachetools==5.5.0
      - certifi==2024.8.30
      - cffi==1.17.1
      - chardet==5.2.0
      - charset-normalizer==3.4.0
      - colorama==0.4.6
      - coverage==7.6.8
      - cryptography==44.0.0
      - distlib==0.3.9
      - docutils==0.21.2
      - exceptiongroup==1.2.2
      - execnet==2.1.1
      - filelock==3.16.1
      - flake8==7.1.1
      - idna==3.10
      - importlib-metadata==8.5.0
      - iniconfig==2.0.0
      - jaraco-classes==3.4.0
      - jaraco-context==6.0.1
      - jaraco-functools==4.1.0
      - jeepney==0.8.0
      - keyring==25.5.0
      - lxml==5.3.0
      - markdown-it-py==3.0.0
      - mccabe==0.7.0
      - mdurl==0.1.2
      - mock==5.1.0
      - more-itertools==10.5.0
      - nh3==0.2.19
      - packaging==24.2
      - parse==1.20.2
      - parse-type==0.6.4
      - pillow==11.0.0
      - pkginfo==1.12.0
      - platformdirs==4.3.6
      - pluggy==1.5.0
      - pycodestyle==2.12.1
      - pycparser==2.22
      - pyflakes==3.2.0
      - pygments==2.18.0
      - pyparsing==3.2.0
      - pyproject-api==1.8.0
      - pyproject-hooks==1.2.0
      - pytest==8.3.4
      - pytest-cov==6.0.0
      - pytest-cover==3.0.0
      - pytest-coverage==0.0
      - pytest-xdist==3.6.1
      - readme-renderer==44.0
      - requests==2.32.3
      - requests-toolbelt==1.0.0
      - rfc3986==2.0.0
      - rich==13.9.4
      - ruff==0.8.1
      - secretstorage==3.3.3
      - six==1.17.0
      - tomli==2.2.1
      - tox==4.23.2
      - twine==6.0.1
      - typing-extensions==4.12.2
      - urllib3==2.2.3
      - virtualenv==20.28.0
      - xlsxwriter==3.2.0
      - zipp==3.21.0
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
