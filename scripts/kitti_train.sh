export CUDA_VISIBLE_DEVICES=0

# cd ..
python -m torch.distributed.launch --nproc_per_node=1 --use_env --master_port=25692 train_distributed_sep.py \
-c configs/pa_po_kitti_trainval.yaml \
-l kitti_logs \
-w kitti_mini_uison \
-n kitti_base_idx_mask2_119epoch \
-x \
-r \
