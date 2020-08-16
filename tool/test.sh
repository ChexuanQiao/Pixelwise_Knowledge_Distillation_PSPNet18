#!/bin/sh

## uncomment for slurm
##SBATCH -p gpu
#SBATCH --gres=gpu:2
#SBATCH -c 8

export PYTHONPATH=./
eval "$(conda shell.bash hook)"
conda activate pt140  # pytorch 1.4.0 env
PYTHON=python

dataset=$1
exp_name=$2
exp_dir=exp/${dataset}/${exp_name}
result_dir=${exp_dir}/result
config=config/cityscapes/cityscapes_pspnet50.yaml
now=$(date +"%Y%m%d_%H%M%S")

mkdir -p ${result_dir}
cp tool/test.sh tool/test.py ${config} ${exp_dir}

export PYTHONPATH=./
$PYTHON -u ${exp_dir}/test.py \
  --config=${config} \
  2>&1 | tee ${result_dir}/test-$now.log
