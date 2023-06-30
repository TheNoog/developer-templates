#!/usr/bin/env bash


<<COMMENT

  Summary:
    The following code will install C++ version 20 (the g++ compiler for C++).

  Reference:
    https://gasparri.org/2020/07/30/installing-c17-and-c20-on-ubuntu-and-amazon-linux/

  Apparently already in gcc 11.2.0, just add the following to the command line:
    -std=c++20

COMMENT


sudo apt install -y build-essential
g++ --version