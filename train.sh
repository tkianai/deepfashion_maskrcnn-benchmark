#!/bin/sh

python -m torch.distributed.launch --nproc_per_node=8 --nnodes=$1 --node_rank=0 --master_addr="10.141.8.84" --master_port=9876 train_net.py --config-file configs/e2e_keypoint_rcnn_R_50_FPN_1x.yaml