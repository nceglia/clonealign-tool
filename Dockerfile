FROM nceglia/base-r-scrna:latest

MAINTAINER Nicholas Ceglia <nickceglia@gmail.com>

COPY run_clonealign.R /codebase/run_clonealign.R

ENTRYPOINT ["Rscript", "/codebase/run_clonealign.R"]
CMD ["example_sce.rdata","example_cnv.rdata"]
