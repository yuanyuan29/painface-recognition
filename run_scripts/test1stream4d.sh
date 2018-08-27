#!/bin/bash
# python main.py --data-path 'data/jpg_320_180_1fps/' --model 'inception_4d_input' --input-width 320 --input-height 180 --nb-labels 2 --nb-epochs 1 --early-stopping 15 --optimizer 'adam' --lr 0.001 --round-to-batch 1 --train-subjects '[5]' --val-subjects '[3]' --test-subjects '[1]' --subjects-overview 'metadata/horse_subjects.csv' --image-identifier 'testinception' --test-run 0 --seq-length 1 --seq-stride 1 --nb-workers 1 --batch-size 100 --nb-input-dims 4 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0
python main.py --data-path 'data/jpg_320_180_1fps/' --model 'vgg16' --input-width 320 --input-height 180 --nb-labels 2 --nb-epochs 1 --early-stopping 15 --optimizer 'adam' --lr 0.001 --nb-dense-units 4096 --round-to-batch 1 --train-subjects '[5]' --val-subjects '[3]' --test-subjects '[1]' --subjects-overview 'metadata/horse_subjects.csv' --image-identifier 'testvgg' --test-run 0 --seq-length 1 --seq-stride 1 --nb-workers 1 --batch-size 100 --nb-input-dims 4 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0
