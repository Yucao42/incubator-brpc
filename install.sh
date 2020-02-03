num_threads=$(nproc)
core_used=$((num_threads/2))

mkdir -p build
cd build
cmake -DCMAKE_PREFIX_PATH=${LOCAL}/usr/local -DCMAKE_BUILD_TYPE=RELEASE ..
make -j${core_used}
make -j${core_used} DESTDIR=${LOCAL} install
cd ..
