cd ../src
export LD_LIBRARY_PATH="/shared/common/mpich-4.2.0/lib"
export MPICH_DIR="/shared/common/mpich-4.2.0"

make clean
make
