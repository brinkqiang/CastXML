#!/bin/sh

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
#

# - clone code
# git clone https://github.com/brinkqiang/CastXML.git
# pushd CastXML
# git submodule update --init --recursive
#

# pushd depends_path
# libtoolize && aclocal && autoheader && autoconf && automake --add-missing
# sh configure
# popd

rm -rf build
mkdir build
pushd build
cmake -DLLVM_DIR=/usr/lib64/llvm5.0/lib/cmake/llvm -DCMAKE_BUILD_TYPE=relwithdebinfo ..
make -j1
popd
# popd