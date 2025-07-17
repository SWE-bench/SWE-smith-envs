#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/facebookresearch__fvcore.a491d5b9 /testbed
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
  - ca-certificates=2024.12.31=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.15=h5eee18b_0
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
      - exceptiongroup==1.2.2
      - filelock==3.17.0
      - fsspec==2025.2.0
      - iniconfig==2.0.0
      - iopath==0.1.10
      - jinja2==3.1.5
      - markupsafe==3.0.2
      - mpmath==1.3.0
      - networkx==3.4.2
      - numpy==2.2.3
      - nvidia-cublas-cu12==12.4.5.8
      - nvidia-cuda-cupti-cu12==12.4.127
      - nvidia-cuda-nvrtc-cu12==12.4.127
      - nvidia-cuda-runtime-cu12==12.4.127
      - nvidia-cudnn-cu12==9.1.0.70
      - nvidia-cufft-cu12==11.2.1.3
      - nvidia-curand-cu12==10.3.5.147
      - nvidia-cusolver-cu12==11.6.1.9
      - nvidia-cusparse-cu12==12.3.1.170
      - nvidia-cusparselt-cu12==0.6.2
      - nvidia-nccl-cu12==2.21.5
      - nvidia-nvjitlink-cu12==12.4.127
      - nvidia-nvtx-cu12==12.4.127
      - packaging==24.2
      - pillow==11.1.0
      - pluggy==1.5.0
      - portalocker==3.1.1
      - pytest==8.3.4
      - pyyaml==6.0.2
      - shapely==2.0.7
      - sympy==1.13.1
      - tabulate==0.9.0
      - termcolor==2.5.0
      - tomli==2.2.1
      - torch==2.6.0
      - tqdm==4.67.1
      - triton==3.2.0
      - typing-extensions==4.12.2
      - yacs==0.1.8
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
pip install torch shapely
rm tests/test_focal_loss.py
pip install -e .
