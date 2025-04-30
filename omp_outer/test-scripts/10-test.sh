#!/bin/bash
#SBATCH --job-name=output_omp_outer_10            # Name of the job
#SBATCH --output=output_omp_outer_10.txt          # Standard output and error log
export OMP_NUM_THREADS=16
../build/lulesh2.0 -s 5  -r 10
../build/lulesh2.0 -s 10 -r 10
../build/lulesh2.0 -s 30 -r 10
../build/lulesh2.0 -s 45 -r 10
../build/lulesh2.0 -s 50 -r 10
../build/lulesh2.0 -s 70 -r 10
../build/lulesh2.0 -s 90 -r 10
