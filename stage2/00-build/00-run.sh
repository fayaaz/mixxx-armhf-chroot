#!/bin/bash -e
on_chroot << EOF
    git clone https://github.com/mixxxdj/mixxx.git /code/
    cd /code/ && git checkout 2.3
    export CMAKE_BUILD_PARALLEL_LEVEL="$(nproc)"
    export PATH="$HOME/.local/bin:$PATH"
    mkdir cmake_build && cd cmake_build
    cmake -DCMAKE_INSTALL_PREFIX=/usr ..
    cmake --build .
    cpack -G DEB
EOF
