#!/bin/bash
#SBATCH --job-name=output_omp_inner_20
#SBATCH --output=output_omp_inner_20.txt

../build/lulesh2.0 -s 5  -r 20
../build/lulesh2.0 -s 10 -r 20
../build/lulesh2.0 -s 30 -r 20
../build/lulesh2.0 -s 45 -r 20
../build/lulesh2.0 -s 50 -r 20
../build/lulesh2.0 -s 70 -r 20
../build/lulesh2.0 -s 90 -r 20
