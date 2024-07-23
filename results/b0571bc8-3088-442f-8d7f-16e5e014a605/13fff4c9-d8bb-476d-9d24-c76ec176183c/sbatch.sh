#!/bin/bash


#SBATCH --partition=b1139testnode









#SBATCH --time=2:00:00


#SBATCH --account=b1139testnode




#SBATCH --requeue


#SBATCH --array=1-1%10
#SBATCH --open-mode=append
#SBATCH --output=stdout.txt
#SBATCH --error=stderr.txt




module load singularity



# All submissions happen at the experiment level
echo $SLURM_ARRAY_JOB_ID > job_id.txt
srun run_simulation.sh
wait