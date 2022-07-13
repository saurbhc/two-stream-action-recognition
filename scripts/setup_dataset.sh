#! /usr/bin/bash

sudo apt -y install \
    wget \
    unzip \
    pv
mkdir -p /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/dataset \
    && cd /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/dataset

# RGB Flow - download
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_jpegs_256.zip.001
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_jpegs_256.zip.002
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_jpegs_256.zip.003
cat ucf101_jpegs_256.zip* > ucf101_jpegs_256.zip
unzip -q ucf101_jpegs_256.zip \
    && rm ucf101_jpegs_256.zip \
    && rm ucf101_jpegs_256.zip.001 \
    && rm ucf101_jpegs_256.zip.002 \
    && rm ucf101_jpegs_256.zip.003

# Optical Flow - download
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_tvl1_flow.zip.001
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_tvl1_flow.zip.002
wget http://ftp.tugraz.at/pub/feichtenhofer/tsfusion/data/ucf101_tvl1_flow.zip.003
cat ucf101_tvl1_flow.zip* > ucf101_tvl1_flow.zip
unzip -q ucf101_tvl1_flow.zip \
    && rm ucf101_tvl1_flow.zip \
    && rm ucf101_tvl1_flow.zip.001 \
    && rm ucf101_tvl1_flow.zip.002 \
    && rm ucf101_tvl1_flow.zip.003

# pre-trained models - download
cd /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/ \
    && mkdir -p /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained \
    && mkdir -p /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained/spatial_resnet101_80 \
    && mkdir -p /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained/motion_resnet101_80 \
    && curl -L https://drive.google.com/file/d/1HWE4eMhJC4rbkkghxFQLMjy7wxaWUo7R/view?usp=sharing > /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained/spatial_resnet101_80/model_best.pth.tar \
    && curl -L https://drive.google.com/file/d/1HWE4eMhJC4rbkkghxFQLMjy7wxaWUo7R/view?usp=sharing > /home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/models_pre_trained/motion_resnet101_80/model_best.pth.tar

/home/ubuntu/image-and-video-classification-local/two-stream-action-recognition/.venv_py2.7/bin/python -m pip install \
    pillow \
    tqdm \
    torchvision \
    future \
    scikit-image pandas
