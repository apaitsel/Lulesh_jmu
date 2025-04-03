#!/bin/bash
#SBATCH --job-name=serial_test            # Name of the job
#SBATCH --output=output_serial.txt          # Standard output and error log

cd build-serial
./lulesh2.0 -s 15
./lulesh2.0 -s 19
./lulesh2.0 -s 24
./lulesh2.0 -s 30
./lulesh2.0 -s 38
./lulesh2.0 -s 48