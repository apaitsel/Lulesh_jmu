#!/bin/bash
#SBATCH --job-name=omp_test            # Name of the job
#SBATCH --output=output_omp.txt          # Standard output and error log

cd build
./lulesh2.0 -s 15
./lulesh2.0 -s 19
./lulesh2.0 -s 24
./lulesh2.0 -s 30
./lulesh2.0 -s 38
./lulesh2.0 -s 48