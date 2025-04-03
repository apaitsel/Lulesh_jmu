sbatch Lulesh_cuda/omp/runtest.sh
sbatch Lulesh_cuda/omp/runtestserial.sh
sbatch --gres==gpu Lulesh_cuda/cuda/runtest.sh