#!/bin/bash


# Ensure script is being run from its directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd ${base_dir}


data_dir="data/scpca_data/SCPCP000006_SPATIAL_SINGLE-CELL-EXPERIMENT_2025-11-23"
output_dir="scpca/marker-gene-notebooks"
mkdir -p ${output_dir}

# Run on all samples in the project
for sample_id in $(basename -a ${data_dir}/SCPCS*); do

  for library_dir in $(basename -a ${data_dir}/${sample_id}/*); do

  library_id=$(basename "$library_dir" | sed 's/_spatial$//')
  echo ${library_id}

  # this one errors, run away
  if [[ ${library_id} == "SCPCL000460" ]] ; then
    continue
  fi

  # skip existing
  if [[ -f "${output_dir}/${library_id}.nb.html" ]]; then
    continue
  fi

  rig run --r-version 4.5-arm64 -e "rmarkdown::render('scpca/scpca-marker-genes.Rmd',
    output_dir='${output_dir}',
    output_file = '${library_id}.nb.html',
    params = list(sample_id = '${sample_id}', library_id = '${library_id}'))"
  done

done

