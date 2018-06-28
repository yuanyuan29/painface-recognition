#!/bin/bash
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# Test w aug, run2.
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# Test w aug, run4.
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# Test w aug, run5.
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 1 --aug-crop 1 --aug-light 1
# TEST WITHOUT AUGMENTATION, 2stream 2FPS RUN1
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run1' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run1' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run1' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run1' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run1' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# TEST WITHOUT AUGMENTATION, 2stream 2FPS RUN2
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# TEST WITHOUT AUGMENTATION, 2stream 2FPS RUN3
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run3' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run3' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run3' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run3' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --subjects-overview 'horse_subjects.csv' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run3' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# TEST WITHOUT AUGMENTATION, 2stream 2FPS RUN4
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run4_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# TEST WITHOUT AUGMENTATION, 2stream 2FPS RUN5
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5_testnoaug_retry' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[0,2,3,5]' --val-subjects '[4]' --test-subjects '[1]' --nb-workers 1 --image-identifier 'add_v4_t1_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,0,3,5]' --val-subjects '[4]' --test-subjects '[2]' --nb-workers 1 --image-identifier 'add_v4_t2_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,0,5]' --val-subjects '[4]' --test-subjects '[3]' --nb-workers 1 --image-identifier 'add_v4_t3_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,0]' --val-subjects '[4]' --test-subjects '[5]' --nb-workers 1 --image-identifier 'add_v4_t5_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_flipcropshade_run5_testnoaug' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
# python test_with_saved_model.py --data-path 'data/jpg_128_128_2fps/' --of-path 'data/jpg_128_128_16fps_OF_magnitude_cv2/' --model '2stream_5d' --input-width 128 --input-height 128 --nb-labels 2 --nb-lstm-layers 5 --nb-lstm-units 32 --nb-conv-filters 16 --nb-dense-units 64 --kernel-size 5 --dropout-1 0.25 --dropout-2 0.5 --nb-epochs 100 --early-stopping 15 --optimizer 'adadelta' --lr 0.001 --batch-size 8 --seq-length 10 --seq-stride 10 --round-to-batch 1 --train-subjects '[1,2,3,5]' --val-subjects '[4]' --test-subjects '[0]' --nb-workers 1 --image-identifier 'add_v4_t0_5hl_128jpg2fps_seq10_bs8_MAG_adadelta_noaug_run2' --test-run 0 --nb-input-dims 5 --val-fraction 0 --data-type 'rgb' --aug-flip 0 --aug-crop 0 --aug-light 0 
