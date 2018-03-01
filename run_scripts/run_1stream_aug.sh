#!/bin/bash
# VAL ON H4
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,0,1,2]' --val-horses '[4]' --test-horses '[3]' --image-identifier 'jpg_val4_t3_seq10_5hlrun3' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 5
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,3,0,1]' --val-horses '[4]' --test-horses '[2]' --image-identifier 'jpg_val4_t2_seq10_5hlrun3' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 5
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,2,3,0]' --val-horses '[4]' --test-horses '[1]' --image-identifier 'jpg_val4_t1_seq10_5hlrun3' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 5
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,1,2,3]' --val-horses '[4]' --test-horses '[0]' --image-identifier 'jpg_val4_t0_seq10_5hlrun3' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 5
# VAL ON H4, 128x128 1FPS
python main.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-units 32 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,1,2,3]' --val-horses '[4]' --test-horses '[0]' --image-identifier 'jpg128_2fps_val4_t0_seq10ss10_4hl_32ubs16_flipcropshade_run4' --test-run 0 --seq-length 10 --seq-stride 10 --nb-workers 1 --batch-size 16 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 --aug-flip 1 --aug-crop 1 --aug-light 1 
python main.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-units 32 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,2,3,0]' --val-horses '[4]' --test-horses '[1]' --image-identifier 'jpg128_2fps_val4_t1_seq10ss10_4hl_32ubs16_flipcropshade_run4' --test-run 0 --seq-length 10 --seq-stride 10 --nb-workers 1 --batch-size 16 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 --aug-flip 1 --aug-crop 1 --aug-light 1 
python main.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-units 32 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,3,0,1]' --val-horses '[4]' --test-horses '[2]' --image-identifier 'jpg128_2fps_val4_t2_seq10ss10_4hl_32ubs16_flipcropshade_run4' --test-run 0 --seq-length 10 --seq-stride 10 --nb-workers 1 --batch-size 16 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 --aug-flip 1 --aug-crop 1 --aug-light 1 
python main.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-units 32 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,0,1,2]' --val-horses '[4]' --test-horses '[3]' --image-identifier 'jpg128_2fps_val4_t3_seq10ss10_4hl_32ubs16_flipcropshade_run4' --test-run 0 --seq-length 10 --seq-stride 10 --nb-workers 1 --batch-size 16 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 --aug-flip 1 --aug-crop 1 --aug-light 1 
python main.py --data-path 'data/jpg_128_128_2fps/' --model 'convolutional_LSTM' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-units 32 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[3,0,1,2]' --val-horses '[4]' --test-horses '[5]' --image-identifier 'jpg128_2fps_val4_t5_seq10ss10_4hl_32ubs16_flipcropshade_run4' --test-run 0 --seq-length 10 --seq-stride 10 --nb-workers 1 --batch-size 16 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 --aug-flip 1 --aug-crop 1 --aug-light 1 
# VAL ON H3
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,0,1,2]' --val-horses '[3]' --test-horses '[4]' --image-identifier 'jpg_val3_t4_seq10_4hlrun1' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[4,5,0,1]' --val-horses '[3]' --test-horses '[2]' --image-identifier 'jpg_val3_t2_seq10_4hlrun1' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[2,4,5,0]' --val-horses '[3]' --test-horses '[1]' --image-identifier 'jpg_val3_t1_seq10_4hlrun1' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[1,2,4,5]' --val-horses '[3]' --test-horses '[0]' --image-identifier 'jpg_val3_t0_seq10_4hlrun1' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[5,0,1,2]' --val-horses '[3]' --test-horses '[4]' --image-identifier 'jpg_val3_t4_seq10_4hlrun2' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[4,5,0,1]' --val-horses '[3]' --test-horses '[2]' --image-identifier 'jpg_val3_t2_seq10_4hlrun2' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[2,4,5,0]' --val-horses '[3]' --test-horses '[1]' --image-identifier 'jpg_val3_t1_seq10_4hlrun2' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'convolutional_LSTM' --input-width 320 --input-height 180 --nb-labels 2 --nb-lstm-units 64 --nb-conv-filters 16 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --round-to-batch 1 --train-horses '[1,2,4,5]' --val-horses '[3]' --test-horses '[0]' --image-identifier 'jpg_val3_t0_seq10_4hlrun2' --test-run 0 --seq-length 10 --nb-workers 1 --batch-size 2 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --nb-lstm-layers 4 
