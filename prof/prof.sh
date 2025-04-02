module load mpi/mpich-4.2.0-x86_64

file=gpu_res/$RANDOM

mkdir $file

salloc --gres=gpu -Q -n 8 mpirun ./nsys_prof.sh -o out -f $file ./lulesh -s 8