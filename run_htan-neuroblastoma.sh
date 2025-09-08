#!/bin/bash


# Ensure script is being run from its directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd ${base_dir}


data_dir="data/htan-neuroblastoma_h5ad"
output_dir="htan-neuroblastoma/notebooks"
mkdir -p ${output_dir}

for h5ad_file in $(basename -a ${data_dir}/*_slideseq.h5ad); do

    htan_id=$(basename "$h5ad_file" | sed 's/_slideseq.h5ad$//')
    echo $htan_id

    # skip existing
    if [[ -f "${output_dir}/${htan_id}.html" ]]; then
      continue
    fi

    Rscript -e "rmarkdown::render('htan-neuroblastoma/htan-libraries.Rmd',
       output_dir='${output_dir}',
       output_file = '${htan_id}.html',
       params = list(htan_id = '${htan_id}'))"
done

