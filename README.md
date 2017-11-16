# Geometric_burstiness_display

## About
This code is used to display the spatial verification result generated by the place recognition method presented in 

    @inproceedings{Sattler16CVPR,
        author = {Sattler, Torsten and Havlena, Michal and Schindler, Konrad and Pollefeys, Marc},
        title = {Large-Scale Location Recognition And The Geometric Burstiness Problem},
        booktitle={IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
        year={2016},
    }
We use the public released in https://github.com/tsattler/geometric_burstiness, and save the matching data for display.

## Data
The **Pittsburgh250k dataset** (http://www.ok.ctrl.titech.ac.jp/~torii/project/repttile/) is employed for experiments, and we train 200k codebook with the AKM code (https://github.com/philbinj/fastcluster) by randomly selecting 20k images to extract upright hessian affine feature https://github.com/perdoch/hesaff and training for 30 iterations. The recall@1 is about 50%, which is far below the result  reported in 

    @Inproceedings{Arandjelovic14a,
        author       = "Arandjelovi\'c, R. and Zisserman, A.",
        title        = "{DisLocation}: {Scalable} descriptor distinctiveness for location recognition",
        booktitle    = "Asian Conference on Computer Vision",
        year         = "2014",
    }
