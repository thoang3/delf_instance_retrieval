docker run -it --rm --runtime=nvidia \
    --shm-size 16G \
    --name DeLF-TF \
    -u 0 \
    -v /home/tung/playground:/home/tung/playground \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -p 9094:6014 -p 5010:5010 \
    -e NVIDIA_VISIBLE_DEVICES=7 -e CUDA_DEVICE_ORDER=PCI_BUS_ID \
    delf/nvcr.io/nvidia/tensorflow:19.09-py3 
