#!/bin/sh

#SBATCH --account=icts

#SBATCH --partition=curie

#SBATCH --nodes=1 --ntasks=16

#SBATCH --time=10:00

#SBATCH --mem-per-cpu=4000

#SBATCH --job-name="Claude1"

#SBATCH --mail-user=formanekjc@gmail.com

#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=32
./openmpbench_C_v31/schedbench --outer-repetitions 100 > shedbench.txt
