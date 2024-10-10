class: Workflow

inputs:
  config:
    type: File?

outputs:
  outdir:
    type: Directory
    outputSource: create_images/hipster

steps:
  create_images:
    run: tasks/create_images.cwl
    in:
      config: config
    out:
      - hipster