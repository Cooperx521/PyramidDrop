#!/bin/bash

python -m llava.eval.model_vqa_science \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file ./playground/data/eval/scienceqa/llava_test_CQM-A.json \
    --image-folder ./playground/data/eval/scienceqa/images/test \
    --answers-file ./playground/data/eval/scienceqa/answers/llava-v1.5-13b.jsonl \
    --single-pred-prompt \
    --temperature 0 \
    --layer_list  '[8,16,24]' \
    --image_token_ratio_list "[1.0,0.5,0.25,0.125]" \
    --conv-mode vicuna_v1

python llava/eval/eval_science_qa.py \
    --base-dir ./playground/data/eval/scienceqa \
    --result-file ./playground/data/eval/scienceqa/answers/llava-v1.5-13b.jsonl \
    --output-file ./playground/data/eval/scienceqa/answers/llava-v1.5-13b_output.jsonl \
    --output-result ./playground/data/eval/scienceqa/answers/llava-v1.5-13b_result.json
