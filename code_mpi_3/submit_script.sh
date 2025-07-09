#!/bin/bash
#SBATCH --job-name=ann-ci
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=46
#SBATCH --partition=cpu
#SBATCH --time=02:00:00
#SBATCH --output=%j.out
#SBATCH --error=%j.err


source /miniconda/bin/activate
conda activate <conda_env_name>
cd $SLURM_SUBMIT_DIR
mpirun python exe.py input.in

