! /bin/bash
SBATCH -N 1
SBATCH --ntasks-per-node=1024
SBATCH --gres=gpu:A100-SXM4:32
SBATCH --time=20:10:00
SBATCH --error=job.%J.err
SBATCH --output=job.%J.out
echo "Starting at `date`"
echo "Running on hosts: $SLURM_NODELIST"
echo "Running on $SLURM_NNODES nodes."
echo "Running $SLURM_NTASKS tasks."
echo "Job id is $SLURM_JOBID"
echo "Job submission directory is : $SLURM_SUBMIT_DIR"
cd $SLURM_SUBMIT_DIR
