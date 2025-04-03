#!/bin/bash
#SBATCH --job-name=cuda_test            # Name of the job
#SBATCH --output=output_cuda.txt          # Standard output and error log

cd build
./lulesh -s 15
./lulesh -s 19
./lulesh -s 24
./lulesh -s 30
./lulesh -s 38
./lulesh -s 48