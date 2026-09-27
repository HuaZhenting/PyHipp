#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH -J "waveform"

## /SBATCH -p general
#SBATCH -o waveform-slurm.%N.%j.out
#SBATCH -e waveform-slurm.%N.%j.err

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; pyh.Waveform(saveLevel=1);"
