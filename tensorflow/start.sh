#!/bin/sh
mkdir -p log
rm -rf log/*
#rm -rf models/* tmp/*
CUDA_VISIBLE_DEVICES=6 nohup  python run.py --train\
    --algo BIDAF\
    --g 6 > log/train.log 2>&1 &
