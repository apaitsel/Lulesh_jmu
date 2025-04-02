rm -rf build/

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DMPI_CXX_COMPILER=mpicc -DWITH_MPI=Off -DCMAKE_CXX_COMPILER=g++ ..
make
