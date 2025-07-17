#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/amueller__word_cloud.ec24191c /testbed
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
      - certifi==2024.8.30
      - cffi==1.17.1
      - charset-normalizer==3.4.0
      - codecov==2.1.13
      - contourpy==1.3.1
      - coverage==7.6.8
      - cryptography==44.0.0
      - cycler==0.12.1
      - docutils==0.21.2
      - exceptiongroup==1.2.2
      - flake8==7.1.1
      - fonttools==4.55.1
      - idna==3.10
      - importlib-metadata==8.5.0
      - iniconfig==2.0.0
      - jaraco-classes==3.4.0
      - jaraco-context==6.0.1
      - jaraco-functools==4.1.0
      - jeepney==0.8.0
      - keyring==25.5.0
      - kiwisolver==1.4.7
      - markdown-it-py==3.0.0
      - matplotlib==3.9.3
      - mccabe==0.7.0
      - mdurl==0.1.2
      - more-itertools==10.5.0
      - nh3==0.2.19
      - numpy==2.1.3
      - packaging==24.2
      - pillow==11.0.0
      - pkginfo==1.12.0
      - pluggy==1.5.0
      - pycodestyle==2.12.1
      - pycparser==2.22
      - pyflakes==3.2.0
      - pygments==2.18.0
      - pyparsing==3.2.0
      - pytest==8.3.4
      - pytest-cov==6.0.0
      - pytest-sugar==1.0.0
      - python-dateutil==2.9.0.post0
      - readme-renderer==44.0
      - requests==2.32.3
      - requests-toolbelt==1.0.0
      - rfc3986==2.0.0
      - rich==13.9.4
      - secretstorage==3.3.3
      - six==1.16.0
      - termcolor==2.5.0
      - tomli==2.2.1
      - twine==6.0.1
      - typing-extensions==4.12.2
      - urllib3==2.2.3
      - wordcloud==1.9.4
      - zipp==3.21.0
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
