#!/bin/bash
#SBATCH --job-name=output_omp_outer_40
#SBATCH --output=output_omp_outer_40.txt
export OMP_NUM_THREADS=16
../build/lulesh2.0 -s 5  -r 40
../build/lulesh2.0 -s 10 -r 40
../build/lulesh2.0 -s 30 -r 40
../build/lulesh2.0 -s 45 -r 40
../build/lulesh2.0 -s 50 -r 40
../build/lulesh2.0 -s 70 -r 40
../build/lulesh2.0 -s 90 -r 40
