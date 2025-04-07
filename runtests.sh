sbatch omp/runtest.sh
sbatch omp/runtestserial.sh
sbatch --gres=gpu cuda/runtest.sh