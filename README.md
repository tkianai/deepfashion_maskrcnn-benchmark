# DeepFashion2

This is the competition of DeepFashion2 Challenge 2019 - Track 1 Clothes Landmark Estimation, more details can be found [here](https://competitions.codalab.org/competitions/23095#learn_the_details)

## About data

Details of the training [data](DATA_FORMAT.md)

Place the data as the following structure:
```
datasets
└── fashion
    ├── train
    │   ├── annos
    │   ├── deepfashion2_coco.json
    │   └── image
    ├── train.zip
    ├── validation
    │   ├── annos
    │   ├── deepfashion2_coco.json
    │   └── image
    └── validation.zip
```

- Transform the deepfashion2 dataset to coco-style

    `python pre-task/fashion2coco.py`

    This would generate two annotation files of coco-style, which locate at `data/train/deepfashion2_coco.json` and `data/validation/deepfashion2_coco.json`

## Modeling
