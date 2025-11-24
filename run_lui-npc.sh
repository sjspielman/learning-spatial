#!/bin/bash

# Ensure script is being run from its directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd ${base_dir}

output_dir="2025-11_templates/notebooks"
mkdir -p ${output_dir}


data_dir="data/2025-11_data/Lui-NPC/GSE194329_RAW"

for sample_name in GSM6248646_NPC_ST5 GSM6248647_NPC_ST6 GSM6248648_NPC_ST7 GSM6248649_NPC_ST8 GSM6248650_NPC_ST9 GSM6248651_NPC_ST10; do
  rig run --r-version 4.5-arm64 -e "rmarkdown::render('2025-11_templates/Lui-NPC.Rmd',
    output_dir='${output_dir}',
    output_file = '${sample_name}.html',
    params = list(sample_name = '${sample_name}'))"

done
