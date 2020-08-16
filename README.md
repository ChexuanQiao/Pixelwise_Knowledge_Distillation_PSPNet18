# Pixelwise_Knowledge_Distillation_PSPNet18

A PyTorch implementation of PSPNet18 with pixelwise knowledge distillation.

This repo is based on and modified from [semseg](https://github.com/hszhao/semseg).

Crop size 481 * 481  
With 713 * 713 pretrained PSPNet50 as teacher_net:  
Main_loss = Kldiv * (1 - alpha) + cross_entropy * alpha   

   |  Config   |    mIoU/mAcc/aAcc     |
   | :-------: | :-------------------: |
   | T1.8 A0.2 | 0.7130/0.7904/0.9505. |
   |  T2 A0.0  | 0.7119/0.7876/0.9507. |
   |  T2 A0.1  | 0.7116/0.7876/0.9501. |
   |  T2 A0.2  | 0.7129/0.7895/0.9503. |
   |  T2 A0.5  | 0.7095/0.7863/0.9504. |
   |  T3 A0.1  | 0.7023/0.7820/0.9500. |
   |  T4 A0.2  | 0.7072/0.7847/0.9500. |
   |  T6 A0.8  | 0.7045/0.7800/0.9494. |
   |  T10 A0.2 | 0.6981/0.7747/0.9488. |
   |Baseline481| 0.6927/0.7639/0.9483. |
