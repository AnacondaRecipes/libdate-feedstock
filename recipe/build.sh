#!/bin/bash

set -exuo pipefail

mkdir -p build
pushd build
cmake -DENABLE_DATE_TESTING=ON -DBUILD_TZ_LIB=ON -DCMAKE_INSTALL_PREFIX=$PREFIX -GNinja ..
ninja install
popd
