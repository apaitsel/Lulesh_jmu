#!/bin/bash
#SBATCH --job-name=output_omp_inner_80
#SBATCH --output=output_omp_inner_80.txt
export OMP_NUM_THREADS=16
../build/lulesh2.0 -s 5  -r 80
../build/lulesh2.0 -s 10 -r 80
../build/lulesh2.0 -s 30 -r 80
../build/lulesh2.0 -s 45 -r 80
../build/lulesh2.0 -s 50 -r 80
../build/lulesh2.0 -s 70 -r 80
../build/lulesh2.0 -s 90 -r 80
