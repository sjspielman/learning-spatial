#!/bin/bash

# Ensure script is being run from its directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd ${base_dir}

output_dir="2025-11_templates/notebooks"
mkdir -p ${output_dir}


data_dir="data/2025-11_data/Li-breast-zenodo-15211538/spaceranger_output"

for sample_dir in ${data_dir}/V1*; do
  sample_name=$(basename $sample_dir)

  rig run --r-version 4.5-arm64 -e "rmarkdown::render('2025-11_templates/Li-breast.Rmd',
     output_dir='${output_dir}',
     output_file = '${sample_name}.html',
     params = list(sample_name = '${sample_name}'))"
 done
