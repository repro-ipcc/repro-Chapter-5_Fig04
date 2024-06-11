#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ipcc_ch5f04

# get the source png from IPCC
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_5_4.png

DIR=Chapter-5_Fig04

# Apply changes to produce figure of $DIR

echo Patching $DIR
cd $DIR

patch < ../${DIR}.patch

# run the code
python AR6_fig5.4_3GHGs_ts.py

# move the figure
mv p04_3GHGs_ts.pdf ../IPCC_AR6_WGI_Figure_5_4.pdf

# Remove the changes
git checkout AR6_fig5.4_3GHGs_ts.py
git checkout Process_data.py