rm lulesh

cd ../src
rm Makefile
cp ../build-cuda/Makefile .

make clean
make

cp lulesh ../build-cuda/
rm lulesh

