rm -rf build/

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DMPI_CXX_COMPILER=mpicc -DCMAKE_CXX_COMPILER=g++ ..

