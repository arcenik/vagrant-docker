FROM debian:bookworm-slim

RUN set -ex ;\
  cd tmp ;\
  apt -yqq update ;\
  apt -yqq install --no-install-recommends bash vagrant vagrant-libvirt vagrant-sshfs iproute2 ;\
  apt -yqq clean ;\
  adduser --uid 1000 --disabled-password vagrant ;\
  mkdir /data

WORKDIR /data
USER vagrant

ENTRYPOINT [ "/usr/bin/vagrant" ]
