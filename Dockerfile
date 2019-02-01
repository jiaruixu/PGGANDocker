FROM tensorflow/tensorflow:1.10.0-devel-gpu-py3

RUN apt-get update && \
    apt-get install -y python3-pip git
RUN pip3 install numpy scipy moviepy Pillow && \
    pip3 install lmdb opencv-python cryptography h5py six

RUN cd /root && git clone https://github.com/tkarras/progressive_growing_of_gans.git && \
    cd progressive_growing_of_gans && \
    git checkout 35d6c23c578bdf2be185d026c6b3d366c1518120

WORKDIR /root/progressive_growing_of_gans
