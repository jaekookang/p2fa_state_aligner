# HMM state-level Forced Aligner 

## Introduction
- This is a HMM state-level forced aligner (FA) based on P2FA [Yuan & Liberman 2008](http://www.ling.upenn.edu/~jiahong/publications/c09.pdf).
- Based on the trained P2FA model, the current FA appends an additional 'state' tier to show state-level alignment (e.g. s2, s3, s4 in 5-state HMMs excluding initial (s1) and final state (s5)).
- For the changes made, check align.py.

## Prerequisites
- HTK toolkit version 3.4
- Python (tested on Python2.7 and Python3.6)

## Run
```shell
# Run one file
python align.py example/test.wav example/test.txt example/test.TextGrid

# Run multiple files
. ./test_libri.sh
```