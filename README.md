# Vagrant docker image

Docker image that provides Vagrant with vagrant-libvirt vagrant-sshfs included

## Usage

Create an alias

```sh
export v="docker run -ti --rm \
-v /run/libvirt/libvirt-sock:/run/libvirt/libvirt-sock \
-v ~/.vagrant.d:/home/vagrant/.vagrant.d \
-v .:/data \
francois75/vagrant:latest"
```

Use Vagrant a normal

```sh
v up
v ssh
v box list
```
