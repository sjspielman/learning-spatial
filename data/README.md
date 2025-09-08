Data files were obtained as follows...

- `GSE299025_RAW` was downloaded from GEO: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE299025
- `GSE299025_reorganized` contains manually reorganized/renamed files into directories `PatientA` and `PatientB` that can be read into R
  - Each of those has a subdirectory `10x` with the barcodes/features/matrix files, and a `spatial` subdirectory with images and positions
- `htan_neuroblastoma` was downloaded using the `synapse` cli
    ```
    synapse get syn26127038 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127039 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127040 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127041 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127042 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127043 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127044 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127045 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127046 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127047 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127048 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127049 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127050 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127051 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127052 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127053 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127054 --downloadLocation htan_neuroblastoma_h5ad/
    synapse get syn26127055 --downloadLocation htan_neuroblastoma_h5ad/
    ```
- `SCPCP000006_SPATIAL_SINGLE-CELL-EXPERIMENT_2025-08-21` was downloaded from portal on the date it says