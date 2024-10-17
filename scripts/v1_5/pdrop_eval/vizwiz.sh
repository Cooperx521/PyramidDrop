#!/bin/bash

python -m llava.eval.model_vqa_loader \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file ./playground/data/eval/vizwiz/llava_test.jsonl \
    --image-folder ./playground/data/eval/vizwiz/test \
    --answers-file ./playground/data/eval/vizwiz/answers/llava-v1.5-13b.jsonl \
    --temperature 0 \
    --layer_list  '[8,16,24]' \
    --image_token_ratio_list "[1.0,0.5,0.25,0.125]" \
    --conv-mode vicuna_v1

python scripts/convert_vizwiz_for_submission.py \
    --annotation-file ./playground/data/eval/vizwiz/llava_test.jsonl \
    --result-file ./playground/data/eval/vizwiz/answers/llava-v1.5-13b.jsonl \
    --result-upload-file ./playground/data/eval/vizwiz/answers_upload/llava-v1.5-13b.json
