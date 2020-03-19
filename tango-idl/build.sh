mkdir build-cmake
cd build-cmake

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make install
