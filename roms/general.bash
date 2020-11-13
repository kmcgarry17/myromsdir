#!/bin/bash
#SBATCH --partition=parallel
#SBATCH --ntasks=128
#SBATCH --time=04:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=kelly.m.mcgarry@uconn.edu

module purge

module load intelics/2016.3-full
module load zlib/1.2.8-ics
module load mpi/mpich2/1.5-ics
module load netcdf-fortran/4.4.1-ics-haswell
module load hdf5/1.8.9-ics

srun --mpi=pmi2 ./oceanG ./ocean.in 

