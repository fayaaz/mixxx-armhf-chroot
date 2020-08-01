#!/bin/bash -e
on_chroot << EOF
    git clone https://github.com/mixxxdj/mixxx.git /code/
    cd /code/ && git checkout 2.3
    cd /code/ && scons -j4 optimize=native opengles=1 machine=armhf faad=1
EOF
