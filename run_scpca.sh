#!/bin/bash


# Ensure script is being run from its directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd ${base_dir}


data_dir="data/SCPCP000006_SPATIAL_SINGLE-CELL-EXPERIMENT_2025-08-21"
output_dir="scpca/notebooks"
mkdir -p ${output_dir}

# Run on all samples in the project
for sample_id in $(basename -a ${data_dir}/SCPCS*); do

    for library_dir in $(basename -a ${data_dir}/${sample_id}/*); do

      library_id=$(basename "$library_dir" | sed 's/_spatial$//')
      #echo ${library_id}

      wdir=${data_dir}/${sample_id}/${library_dir}

      # this one errors, run away
      if [[ ${library_id} == "SCPCL000460" ]] ; then
        continue
      fi

      # skip existing
      if [[ -f "${output_dir}/${library_id}.html" ]]; then
        continue
      fi

       Rscript -e "rmarkdown::render('scpca/scpca-libraries.Rmd',
         output_dir='${output_dir}',
         output_file = '${library_id}.html',
         params = list(sample_id = '${sample_id}', library_id = '${library_id}'))"
    done
done

