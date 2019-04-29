#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "clonealign-tool"
label: "clonealign-tool"
cwlVersion: v1.0
doc: |
    ![build_status](https://quay.io/repository/nceglia/clonealign-tool/status)
    A Docker container for the clonealign. See the [clonealign](https://github.com/kieranrcampbell/clonealign) website for more information.

dct:creator:
  "@id": "https://orcid.org/0000-0001-9387-103X"
  foaf:name: Nicholas Ceglia
  foaf:mbox: "mailto:nickceglia@gmail.com"
requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/collaboratory/nceglia/cellassign-tool:latest"
inputs:
  singlecellexperiment:
    type: File
    doc: "SingleCellExperiment object"
    inputBinding:
      position: 1
  copy_number_variation:
    type: File
    doc: "Copy number profiles for each clone and gene (where the genes **must** be the same as those measured in the expression data). This can be in the form of a `data.frame`, `DataFrame` or `matrix`"
    inputBinding:
      position: 2
outputs:
  clone_align_assignments:
    type: File
    outputBinding:
      glob: clones.rdata
    doc: "RDS object that has clone to cell assignments."
