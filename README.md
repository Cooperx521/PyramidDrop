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

1. Clone this repository and navigate to Open-LLaVA-NeXT folder
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