#!/bin/bash
# 2stream 64 units
python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 4 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 3 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 18 --seq-length 10 --seq-stride 5 --round-to-batch 1 --train-horses '[3,2,5,1]' --val-horses ['4'] --test-horses '[0]' --nb-workers 1 --image-identifier '4hl_t0_val4_32ubs18_128jpg2fps_seq10ss5_flip_aug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1
