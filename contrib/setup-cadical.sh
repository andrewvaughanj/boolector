#!/bin/bash

source "$(dirname "$0")/setup-utils.sh"

CADICAL_DIR=${DEPS_DIR}/cadical

# Download and build CaDiCaL
git clone --depth 1 https://github.com/arminbiere/cadical.git ${CADICAL_DIR}
cd ${CADICAL_DIR}

if is_windows; then
  component="CaDiCaL"
  last_patch_date="20190623"
  test_apply_patch "${component}" "${last_patch_date}"
  EXTRA_FLAGS="-q"
fi

CXXFLAGS="-fPIC" ./configure ${EXTRA_FLAGS}
make -j${NPROC}
install_lib build/libcadical.a
install_include src/ccadical.h
