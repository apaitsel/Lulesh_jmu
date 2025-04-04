# Compilation

### Cuda

1. cd to the cuda directory
2. cd to the build-cuda directory
3. run make
### OMP
1. cd to the omp directory
2. run the build.sh script to compile the omp version
3. run the buildserial.sh script to compile the serial version

# Tests
To test that all versions are getting the correct results run the runtests.sh script in the root of the repo and compare the results to the expected results in this [paper](https://asc.llnl.gov/sites/asc/files/2023-05/LULESH2.0_Changes.pdf). The serial version has some of the larger tests commented out for obvious reasons.

