#!/bin/bash

START_DIR="$(pwd)"
RUN_PATH="/scratch/tcstud10/$SLURM_JOB_ID.dir"
Hamiltonian="Hamiltonian.op"
HM_files="HM*"
mkdir -p $RUN_PATH
cp -r input.inp $RUN_PATH 
cp -r $HM_files $RUN_PATH
cp -r $Hamiltonian $RUN_PATH
cp -r run/ $RUN_PATH
cd $RUN_PATH

#####run MCTDH##################
mctdh85 -w input.inp
################################

cp -r $RUN_PATH/run/ $START_DIR
rm -rf $RUN_PATH

