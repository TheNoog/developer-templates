#!/usr/bin/env bash


<<COMMENT

  Summary:
    The following code will install OpenCL drivers and Tensorflow GPU.

  Reference:
    https://askubuntu.com/questions/796770/how-to-install-libopencl-so-on-ubuntu

COMMENT


sudo apt update
sudo apt install ocl-icd-opencl-dev
sudo apt install -y python3-pip
pip install tensorflow-gpu