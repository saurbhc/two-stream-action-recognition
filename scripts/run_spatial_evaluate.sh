#! /usr/bin/bash
/home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/.venv_py2.7/bin/python \
    /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/spatial_cnn.py \
    --resume \
    /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained/spatial_resnet101_80/model_best.pth.tar \
    --evaluate
