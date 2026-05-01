# Training the model with PyTorch

Use Python 3.11

```bash
conda create -n bnn python=3.11
conda activate bnn
pip install -r requirements.txt
```

# Model Architecture

```
==========================================================================================
Layer (type:depth-idx)                   Output Shape              Param #
==========================================================================================
our_net                                  [1, 10]                   --
├─Sequential: 1-1                        [1, 512, 2, 2]            --
│    └─BinarizeConv2d: 2-1               [1, 64, 32, 32]           1,792
│    └─MaxPool2d: 2-2                    [1, 64, 16, 16]           --
│    └─BatchNorm2d: 2-3                  [1, 64, 16, 16]           128
│    └─Hardtanh: 2-4                     [1, 64, 16, 16]           --
│    └─BinarizeConv2d: 2-5               [1, 128, 16, 16]          73,856
│    └─MaxPool2d: 2-6                    [1, 128, 8, 8]            --
│    └─BatchNorm2d: 2-7                  [1, 128, 8, 8]            256
│    └─Hardtanh: 2-8                     [1, 128, 8, 8]            --
│    └─BinarizeConv2d: 2-9               [1, 256, 8, 8]            295,168
│    └─MaxPool2d: 2-10                   [1, 256, 4, 4]            --
│    └─BatchNorm2d: 2-11                 [1, 256, 4, 4]            512
│    └─Hardtanh: 2-12                    [1, 256, 4, 4]            --
│    └─BinarizeConv2d: 2-13              [1, 512, 4, 4]            1,180,160
│    └─MaxPool2d: 2-14                   [1, 512, 2, 2]            --
│    └─BatchNorm2d: 2-15                 [1, 512, 2, 2]            1,024
│    └─Hardtanh: 2-16                    [1, 512, 2, 2]            --
├─Sequential: 1-2                        [1, 10]                   --
│    └─BinarizeLinear: 2-17              [1, 512]                  1,049,088
│    └─BatchNorm1d: 2-18                 [1, 512]                  1,024
│    └─Hardtanh: 2-19                    [1, 512]                  --
│    └─BinarizeLinear: 2-20              [1, 512]                  262,656
│    └─BatchNorm1d: 2-21                 [1, 512]                  1,024
│    └─Hardtanh: 2-22                    [1, 512]                  --
│    └─BinarizeLinear: 2-23              [1, 10]                   5,130
│    └─BatchNorm1d: 2-24                 [1, 10]                   --
│    └─LogSoftmax: 2-25                  [1, 10]                   --
==========================================================================================
Total params: 2,871,818
Trainable params: 2,871,818
Non-trainable params: 0
Total mult-adds (Units.MEGABYTES): 59.84
==========================================================================================
Input size (MB): 0.01
Forward/backward pass size (MB): 1.25
Params size (MB): 11.49
Estimated Total Size (MB): 12.74
==========================================================================================
```
