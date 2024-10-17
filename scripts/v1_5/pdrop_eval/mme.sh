scripts/v1_5/ori_eval#!/bin/bash

python -m llava.eval.model_vqa_loader \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file ./playground/data/eval/MME/llava_mme.jsonl \
    --image-folder ./playground/data/eval/MME/MME_Benchmark_release_version \
    --answers-file ./playground/data/eval/MME/answers/llava-v1.5-13b.jsonl \
    --temperature 0 \
    --layer_list  '[8,16,24]' \
    --image_token_ratio_list "[1.0,0.5,0.25,0.125]" \
    --conv-mode vicuna_v1

cd ./playground/data/eval/MME

python convert_answer_to_mme.py --experiment llava-v1.5-13b

cd eval_tool

python calculation.py --results_dir answers/llava-v1.5-13b
