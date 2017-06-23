export CC=${PREFIX}/bin/gcc
export CXX=${PREFIX}/bin/g++
./configure --prefix=$PREFIX
make -j8
make install
