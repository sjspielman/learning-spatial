# learning-spatial

I'm doing tutorials and such.
Aiming to treat this README like a lab notebook.


### 2025-07-18

- Environment setup is different from what we currently have on the server:
  - I'm setting up on R `4.5` with Bioc `3.21`, which is where some of the dependencies need to be (e.g. some of `ggspavis`)
  - We wouldn't get around to running this workshop for a little while, so it's not unreasonable to think we'd bump up at least to there by then
- Completed the OSTA: Visium DLPFC workflow
  - This workflow used essentially standard SCE-esque approaches for an `spe` object, i.e. _not spatially-aware methods_
  - Introduced some nice `ggspavis` plots including QC plots
  - The last part introduces their `spatialLBD` package which seems very nice but not for use in a workshop
- Completed the OSTA: Visium CRC workflow
  - Read in the 10x visium data directly with the `VisiumIO` package
  - Showed a method for cell deconvolution `spacexr` which I'll look into further
    - Some exploratory viz on these results too
  - Introduced using AUCell, but I didn't go through that part
