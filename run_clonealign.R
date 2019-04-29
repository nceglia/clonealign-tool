library(clonealign)
library(tensorflow)
library(SingleCellExperiment)

args = commandArgs(trailingOnly=TRUE)

sce <- readRDS(args[1])
cnv <- readRDS(args[2])

cal <- clonealign(example_sce, cnv)
saveRDS(cal, file = 'cloneassignments.rdata')
