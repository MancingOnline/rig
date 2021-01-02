
    cd scripts && \
    ./build_deps.sh && \
    mkdir build -p && \
    cd build && \
    cmake .. -DXMRIG_DEPS=scripts/deps \
        -DBUILD_STATIC=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DWITH_HTTPD=OFF \
        -DCMAKE_BUILD_TYPE=Release && \
    make -j$(nproc)
