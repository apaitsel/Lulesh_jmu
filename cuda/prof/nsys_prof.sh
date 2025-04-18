#!/bin/sh
#
# Script to launch nvprof on an MPI process.  This script will
# create unique output file names based on the rank of the 
# process.  Examples:
#   mpirun -np 4 nvprof-script a.out 
#   mpirun -np 4 nvprof-script -o outfile a.out
#   mpirun -np 4 nvprof-script test/a.out -g -j
# In the case you want to pass a -o or -h flag to the a.out, you
# can do this.
#   mpirun -np 4 nvprof-script -c a.out -h -o
# You can also pass in arguments to nvprof
#   mpirun -np 4 nvprof-script --print-api-trace a.out
#



usage () {
 echo "nvprof-script [nvprof options] [-h] [-o outfile] a.out [a.out options]";
 echo "or"
 echo "nvprof-script [nvprof options] [-h] [-o outfile] -c a.out [a.out options]";
}
cd ../src
nvprof_args=""
while [ $# -gt 0 ];
do
    case "$1" in
        (-f) shift; file="$1";;
        (-o) shift; outfile="$1";;
        (-c) shift; break;;
        (-h) usage; exit 1;;
        (*) nvprof_args="$nvprof_args $1";;
    esac
    shift
done

# If user did not provide output filename then create one
if [ -z $outfile ] ; then
    outfile=`$1`.nvprof-out
fi

# Find the rank of the process from the MPI rank environment variable
# to ensure unique output filenames.  The script handles Open MPI
# and MVAPICH.  If your implementation is different, you will need to
# make a change here.

# Set the nvprof command and arguments.
NVPROF="nsys profile -o ../prof/$file/$outfile.$RANDOM $nvprof_args" 
exec $NVPROF $*

# If you want to limit which ranks get profiled, do something like
# this. You have to use the -c switch to get the right behavior.
# mpirun -np 2 nvprof-script --print-api-trace -c a.out -q  
# if [ $rank -le 0 ]; then
#     exec $NVPROF $*
# else
#     exec $*
# fi