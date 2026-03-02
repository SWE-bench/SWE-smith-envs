# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libsdl2-dev     libsdl2-image-dev     libsodium-dev     libpng-dev     libfmt-dev     liblua5.3-dev     libgtest-dev     libgmock-dev     libbenchmark-dev     libbz2-dev     libasound2-dev     gettext     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/diasurgical__DevilutionX.afdaa2ac /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Explicitly disable LTO and Benchmarks to avoid system library version mismatches
RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTING=ON           -DDEBUG=OFF           -DNONET=ON           -DENABLE_LTO=OFF           -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=OFF           .. &&     make -j$(nproc) animationinfo_test appfat_test automap_test cursor_test dead_test diablo_test drlg_common_test drlg_l1_test drlg_l2_test drlg_l3_test drlg_l4_test effects_test inv_test items_test math_test missiles_test multi_logging_test pack_test player_test quests_test scrollrt_test stores_test tile_properties_test timedemo_test townerdat_test writehero_test vendor_test palette_blending_test text_render_integration_test codec_test crawl_test format_int_test ini_test path_test rectangle_test static_vector_test str_cat_test utf8_test vision_test

CMD ["/bin/bash"]