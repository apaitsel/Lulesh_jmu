#!/bin/bash
#SBATCH --job-name=both_test_runner           # Name of the job
#SBATCH --output=both_runner.txt          # Standard output and error log

cd test-scripts/
export OMP_NUM_THREADS=16

sbatch 5-test.sh
sbatch 10-test.sh
sbatch 20-test.sh
sbatch 40-test.sh
sbatch 80-test.sh
sbatch 160-test.sh