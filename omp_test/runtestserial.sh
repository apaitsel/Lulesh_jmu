#!/bin/bash
#SBATCH --job-name=serial_test            # Name of the job
#SBATCH --output=output_serial.txt          # Standard output and error log

cd build-serial
./lulesh2.0 -s 5
./lulesh2.0 -s 10
./lulesh2.0 -s 30
./lulesh2.0 -s 45
#./lulesh2.0 -s 50
#./lulesh2.0 -s 70
#./lulesh2.0 -s 90