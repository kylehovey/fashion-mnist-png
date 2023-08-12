# Overview

My goal with this project was to see if you could use PNG compression to do decent image classification. I was inspired by [a recent paper](https://aclanthology.org/2023.findings-acl.426.pdf) that used GZip compression and kNN to do sentiment analysis on text. I figured it would be fun to try something like this using [Fashion MNIST](https://www.kaggle.com/datasets/zalando-research/fashionmnist).

# Results

This didn't work very well. On average, there are two categories that half of the labeled sets seem to fall into in terms of compressed length. I didn't do anything with kNN as it would likely not result in much further differentiation given the bimodal homogenous nature of the results. Still, this was a fun experiment.

<img width="1693" alt="Fashion MNIST classified using PNG compression - half of the labels are centered around one compressed size, and half are centered around another. The differentiation is not very clear from these results." src="https://github.com/kylehovey/fashion-mnist-png/assets/7339800/508b4e51-e38c-4c18-8da7-b95fb2595855">

For fun, I also tried this with MNIST (code not included, but all you need to do is use the `MNIST` dataset identifier from `MLDatasets` and use `string(k)` for the label since there is no `classnames` method for `MNIST` data).

<img width="1691" alt="MNIST_PNG" src="https://github.com/kylehovey/fashion-mnist-png/assets/7339800/a33715e1-a9eb-45ae-9406-3284c7658d7e">
