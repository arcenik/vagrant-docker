# Vagrant docker image

Docker image that provides Vagrant with vagrant-libvirt vagrant-sshfs included

## Usage

Create an alias

```sh
export v="docker run -ti --rm \
-v /run/libvirt/libvirt-sock:/run/libvirt/libvirt-sock \
-v ~/.vagrant.d:/home/vagrant/.vagrant.d \
-v .:/data \
--network host \
francois75/vagrant:latest"
```

Or use the provided **v** script

Use Vagrant a normal

```sh
v up
v ssh
v box list
```

## Special case

For ssh-config command, you need to replace the container folder with the current path

```sh
v ssh-config | sed "s,/data,$(pwd),"
```
