class: Workflow

inputs:
  epochs: int
  train_dataset: Directory
  eval_dataset: Directory
  train_script: File
  eval_script: File

outputs:
  model:
    type: File
    outputSource: train/model
  accuracy:
    type: string
    outputSource: eval/accuracy

steps:
  train:
    run: train.cwl
    in:
      train_script:train_script
      epochs:epochs
      dataset:train_dataset
    out:
      - model
      - loss
  evaluate:
    run: eval.cwl
    in:
      eval_script:eval_script
      dataset:eval_dataset
      model:train/model
    out:
      - accuracy