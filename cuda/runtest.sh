#!/bin/bash
#SBATCH --job-name=cuda_test            # Name of the job
#SBATCH --output=output_cuda.txt          # Standard output and error log

cd build-cuda
./lulesh -s 5
./lulesh -s 10
./lulesh -s 30
./lulesh -s 45
./lulesh -s 50
./lulesh -s 70
./lulesh -s 90
