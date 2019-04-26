library(clonealign)
library(tensorflow)
library(SingleCellExperiment)

args = commandArgs(trailingOnly=TRUE)

rdata <- paste0("/data/",args[1])
sce <- readRDS(rdata)

rdata <- paste0("/data/",args[2])
cnv <- readRDS(rdata)

cal <- clonealign(example_sce, cnv)
saveRDS(cal, file = '/results/cloneassignments.rdata')
