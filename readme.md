# Overview

My goal with this project was to see if you could use PNG compression to do decent image classification. I was inspired by [a recent paper](https://aclanthology.org/2023.findings-acl.426.pdf) that used GZip compression and kNN to do sentiment analysis on text. I figured it would be fun to try something like this using [Fashion MNIST](https://www.kaggle.com/datasets/zalando-research/fashionmnist).

# Results

This didn't work very well. On average, there are two categories that half of the labeled sets seem to fall into in terms of compressed length. I didn't do anything with kNN as it would likely not result in much further differentiation given the bimodal homogenous nature of the results. Still, this was a fun experiment.
