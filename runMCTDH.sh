#!/bin/bash -l

#SBATCH --nodes 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem 25000mb
#
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#
########################################
script_template="mctdh_submitter.sh" #ADC input

time srun $script_template

exit 0

