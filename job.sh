#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 --ntasks 1 --cpus-per-task 32
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=2000
#SBATCH --job-name="Blessed_1"
#SBATCH --mail-user=blessedbrighton@live.com
#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=32
#./arraybench_59049 > arraybench_59049.out
./schedbench  > schedbench.txt
./syncbench > syncbench.txt
./taskbench > taskbench.txt
