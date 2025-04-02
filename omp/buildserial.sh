rm -rf build-serial/

mkdir build-serial
cd build-serial
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_MPI=Off -DWITH_OPENMP=Off -DCMAKE_CXX_COMPILER=g++ ..
make
