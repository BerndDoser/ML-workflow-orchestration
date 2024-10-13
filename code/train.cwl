class: CommandLineTool

baseCommand: [python]

inputs:
  train_script:
    type: File
    inputBinding:
      position: 1
  dataset:
    type: Directory
    inputBinding:
      position: 2
      prefix: --dataset
  epochs:
    type: int
    inputBinding:
      position: 2
      prefix: --epochs

outputs:
  model:
    type: File
    outputBinding:
      glob: state_dict_model.pt
  loss:
    type: string
    outputBinding:
      glob: 