#!/bin/bash

python -m llava.eval.model_vqa \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file ./playground/data/eval/mm-vet/llava-mm-vet.jsonl \
    --image-folder ./playground/data/eval/mm-vet/images \
    --answers-file ./playground/data/eval/mm-vet/answers/llava-v1.5-13b.jsonl \
    --temperature 0 \
    --layer_list  '[8,16,24]' \
    --image_token_ratio_list "[0.5,0.25,0.125]" \
    --conv-mode vicuna_v1

mkdir -p ./playground/data/eval/mm-vet/results

python scripts/convert_mmvet_for_eval.py \
    --src ./playground/data/eval/mm-vet/answers/llava-v1.5-13b.jsonl \
    --dst ./playground/data/eval/mm-vet/results/llava-v1.5-13b.json

