#!/bin/bash

# This script is used to run the docker image. Change or remove GPU flag if you dont have nvidia-docker or the needed GPUs
docker run -e WANDB_API_KEY=$WANDB_API_KEY --rm -it -p 8000:8000 --gpus 1 -v "${PWD}":/workspace dalle-mini:latest
