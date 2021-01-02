#!/bin/bash -e
PKG_CODE="cmake"
PKG_VER="3.4.3"
PKG_REPO="http://www.cmake.org/files/v3.4/"
mkdir -p deps
mkdir -p deps/include
mkdir -p deps/lib
mkdir -p build && cd build
if [ -f ${PKG_CODE}-${PKG_VER}.tar.gz ] ; then
wget ${PKG_REPO}/${PKG_CODE}-${PKG_VER}.tar.gz  -O ${PKG_CODE}-${PKG_VER}.tar.gz
fi
tar -zxvf ${PKG_CODE}-${PKG_VER}.tar.gz
cd ${PKG_CODE}-${PKG_VER}
./bootstrap
make -j$(nproc)
make install
cd ..
