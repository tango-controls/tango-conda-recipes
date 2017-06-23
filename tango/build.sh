export CC=${PREFIX}/bin/gcc
export CXX=${PREFIX}/bin/g++
export EGREP=$(which egrep)

./configure \
  --prefix=$PREFIX \
  --with-omni=$PREFIX \
  --with-zmq=$PREFIX \
  --with-zlib=$PREFIX \
  --disable-static \
  --disable-java \
  --disable-dserver \
  --disable-dbcreate

make -j8
make install
