#! /bin/bash

docker run -ti --rm \
-v /run/libvirt/libvirt-sock:/run/libvirt/libvirt-sock \
-v ~/.vagrant.d:/home/vagrant/.vagrant.d \
-v .:/data \
--network host \
francois75/vagrant:latest $*
