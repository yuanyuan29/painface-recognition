#!/bin/bash
python main.py --data-path 'data/jpg_320_180_1fps/' --model 'conv3d_informed' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 32 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 50 --early-stopping 5 --optimizer 'adam' --lr 0.001 --round-to-batch True --train-horses '[0,1,2]' --val-horses '[4]' --test-horses '[3]' --device '/gpu:1' --image-identifier 'withoutH6_jpg_val4_5cnn_t3_l1l2' --test-run 0 --seq-length 20 --nb-workers 1 --batch-size 10 --nb-input-dims 5 --nb-lstm-layers 1
python main.py --data-path 'data/jpg_320_180_1fps/' --model 'conv3d_informed' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 32 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 50 --early-stopping 5 --optimizer 'adam' --lr 0.001 --round-to-batch True --train-horses '[3,0,1,]' --val-horses '[4]' --test-horses '[2]' --device '/gpu:1' --image-identifier 'withoutH6_jpg_val4_5cnn_t2_l1l2' --test-run 0 --seq-length 20 --nb-workers 1 --batch-size 10 --nb-input-dims 5  --nb-lstm-layers 1
python main.py --data-path 'data/jpg_320_180_1fps/' --model 'conv3d_informed' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 32 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 50 --early-stopping 5 --optimizer 'adam' --lr 0.001 --round-to-batch True --train-horses '[2,3,0]' --val-horses '[4]' --test-horses '[1]' --device '/gpu:1' --image-identifier 'withoutH6_jpg_val4_5cnn_t1_l1l2' --test-run 0 --seq-length 20 --nb-workers 1 --batch-size 10 --nb-input-dims 5 --nb-lstm-layers 1
python main.py --data-path 'data/jpg_320_180_1fps/' --model 'conv3d_informed' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 32 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 50 --early-stopping 5 --optimizer 'adam' --lr 0.001 --round-to-batch True --train-horses '[1,2,3]' --val-horses '[4]' --test-horses '[0]' --device '/gpu:1' --image-identifier 'withoutH6_jpg_val4_5cnn_t0_l1l2' --test-run 0 --seq-length 20 --nb-workers 1 --batch-size 10 --nb-input-dims 5 --nb-lstm-layers 1
