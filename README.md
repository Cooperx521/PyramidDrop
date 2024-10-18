# PyramidDrop: Accelerating Your Large Vision-Language Models via Pyramid Visual Redundancy Reduction

## 🎯 News

**[2024.10.18]** 🚀 We release the paper at [ArXiv]()

## 👨‍💻 Todo

- [x] Release the PDrop evaluation code of llava1.5
- [ ] Release the PDrop training code of llava1.5
- [ ] Release the PDrop evaluation code of llava-next
- [ ] Release the PDrop training code of llava-next
- [ ] Release the checkpoints 

## 🔧 Install

1. Clone this repository and navigate to PyramidDrop folder
```bash
git clone https://github.com/Cooperx521/PyramidDrop.git
cd PyramidDrop
```

2. Install Package
```Shell
conda create -n pdrop python=3.10 -y
conda activate pdrop
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
```

3. Install additional packages for training
```
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
```

## Efficient Inference

We follow the original evaluation in [LLaVA](https://github.com/haotian-liu/LLaVA) for most of benchmarks. For [MMStar](https://github.com/MMStar-Benchmark/MMStar), we use [VLMEvalKit](https://github.com/open-compass/VLMEvalKit). 

See [Evaluation.md](https://github.com/haotian-liu/LLaVA/blob/main/docs/Evaluation.md) to prepare for inference. 

If you want to use PyramidDrop to operate efficient inference on original llava1.5, evaluation code can be found in ```scripts/v1_5/pdrop_eval```

Options to note:

- `--layer_list  '[8,16,24]' `: denote the layers after which we apply rank & drop.
- `--image_token_ratio_list "[1.0,0.5,0.25,0.125]" `: denote the image tokens ratio we retain at different stage, and this represents we obtain 50%, 25%, 12.5% after layer8, layer16, layer24.