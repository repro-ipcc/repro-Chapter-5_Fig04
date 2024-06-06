#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ipcc_ch5f04

DIR=Chapter-5_Fig04

# Apply changes to produce figure of $DIR

echo Patching $DIR
cd $DIR

patch < ../${DIR}.patch

# run the code
python AR6_fig5.4_3GHGs_ts.py

# Remove the changes
# git checkout ch03_fig2b_code.py
