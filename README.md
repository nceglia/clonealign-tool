# clonealign-tool
Container for running clonealign.

Github: https://github.com/kieranrcampbell/clonealign
Reference: https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1645-z

### To run *cellassign* on saved RDS data. ###
 - Create ./data and ./results directories.
 - Place RDS files into data directory. (https://github.com/kieranrcampbell/clonealign/blob/master/vignettes/introduction_to_clonealign.Rmd)
    1. SingleCellExperiment object
    2. Copy Number Variation data - gene-by-clone matrix or data.frame
 - Run docker command mounting ./results to /results and ./data to /data
 - Results are stored in "./results/celltypes.rdata"

#### Example Docker Commands ####
```
sudo docker build -t run-clonealign .
sudo docker run --rm -ti --mount type=bind,source=$(pwd)/data,target=/data --mount type=bind,source=$(pwd)/results,target=/results run-clonealign example_sce.rdata example_cnv.rdata
```
