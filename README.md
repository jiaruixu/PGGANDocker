# PGGANDocker

## Dataset
Dataset is stored in

```
/mnt/ngv/datasets/modeling_illumination_synth_data
```

## Build the docker image

```
$ docker build -t pggan .
```

## Container functions

Transfer data into tfrecords

```
$ container-fn tensorflow-pggan-datatransfer \
  --dataset-path /mnt/fcav/3D-lighting/dataset \
  --output-path /mnt/fcav/3D-lighting/dataset_tfrecord
```

Training data

```
$ container-fn tensorflow-pggan-train \
  --dataset-path /mnt/fcav/3D-lighting \
  --output-path /mnt/fcav/3D-lighting/results \
  --config /mnt/fcav/3D-lighting/config/config.py
```
