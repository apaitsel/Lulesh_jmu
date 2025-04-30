#!/bin/bash
#SBATCH --job-name=weak_scaling
#SBATCH --output=weak_scaling.txt

export OMP_NUM_THREADS=1
./build/lulesh2.0 -s 30
export OMP_NUM_THREADS=2
./build/lulesh2.0 -s 38
export OMP_NUM_THREADS=4
./build/lulesh2.0 -s 48
export OMP_NUM_THREADS=8
./build/lulesh2.0 -s 60
export OMP_NUM_THREADS=16
./build/lulesh2.0 -s 76