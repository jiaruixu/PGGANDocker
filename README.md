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

```
$ container-fn tensorflow-pggan-train \
  --dataset-path /mnt/fcav/3D-lighting \
  --output-path /mnt/fcav/3D-lighting/results \
  --config /mnt/fcav/3D-lighting/config/config.py
```

```

```
