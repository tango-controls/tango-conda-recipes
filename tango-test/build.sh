mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_VERBOSE_MAKEFILE=true \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      ..

export MAKEFLAGS="-j `nproc`"
cmake --build . --target install
