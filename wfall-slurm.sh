#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH -J "wfall"

## /SBATCH -p general
#SBATCH -o wfall-slurm.%N.%j.out
#SBATCH -e wfall-slurm.%N.%j.err

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
wfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*', '*array04*', '*20181105*'], objtype=pyh.Waveform, saveLevel=1); \
wfall.save();"
