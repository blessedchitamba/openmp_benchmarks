#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 --ntasks 1 --cpus-per-task 32
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=2000

#SBATCH --job-name="tim_hpc_a1_1"
#SBATCH --mail-user=smntim001@myuct.ac.za
#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=32
./arraybench_59049 > arraybench_59049.out
#./schedbench --ntasks=1 > schedbench.out
#./syncbench --ntasks=1 > syncbench.out
#./taskbench --ntasks=1 > taskbench.out
