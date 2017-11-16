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
The **Pittsburgh250k dataset** (http://www.ok.ctrl.titech.ac.jp/~torii/project/repttile/) is employed for experiments, and we train a 200k codebook with the AKM code (https://github.com/philbinj/fastcluster) by randomly selecting 20k images to extract upright hessian affine feature https://github.com/perdoch/hesaff and training for 30 iterations. The recall@1 is about 50%, which is far below the result (60%)  reported in 

    @Inproceedings{Arandjelovic14a,
        author       = "Arandjelovi\'c, R. and Zisserman, A.",
        title        = "{DisLocation}: {Scalable} descriptor distinctiveness for location recognition",
        booktitle    = "Asian Conference on Computer Vision",
        year         = "2014",
    }

## Attention
### hessian affine detector
   The local feature extracted from https://github.com/perdoch/hesaff is different from the result extracted by the code http://cmp.felk.cvut.cz/~perdom1/code/haff_cvpr09. It is better to use the former version. The hessian affine detector is from the following paper
   
    @InProceedings{Perdoch-CVPR-2009,
       author = {Michal Per{\v d}och, Ond{\v r}ej Chum, Ji{\v r}{\' i} Matas},
       title = {Efficient Representation of Local Geometry for Large Scale Object Retrieval},
       booktitle = {IEEE Computer Society Conference on Computer Vision and Pattern Recognition},
       year = {2009},
       month = {June},
       day = {20--25},
       venue = {Miami, Florida, USA},
       pages = {9--16},
        ISBN = {978-1-4244-3994-2},
    }

### OpenMPI in AKM
   The default OpenMPI can result in error for the final python running of AKM, you should compile the OpenMPI with an special option.
   
 ## Result
   It seems that the gemotric parameter b represent 2b, we use the [a b/2; b/2 c] to draw ellipses
   The match result is illustarted as follow.
