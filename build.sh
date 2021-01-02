#!/bin/bash
cd scripts && \
    ./build_deps.sh && \
    cd ..  \
    && mkdir build -p  \
    && cd build && \
    cmake .. -DCMAKE_BUILD_TYPE=Release \
     -DWITH_HTTPD=OFF \
     -DCMAKE_C_COMPILER=/usr/bin/gcc-6  \
    -DCMAKE_CXX_COMPILER=/usr/bin/g++-6  \
    -DCMAKE_EXE_LINKER_FLAGS="-static -static-libstdc++ -static-libgcc"  \
    -DXMRIG_DEPS=scripts/deps &&\
    make -j$(nproc)
