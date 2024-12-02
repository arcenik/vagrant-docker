#! /bin/bash

set -e

VERSION="$(grep FROM Dockerfile | sed 's/^.*debian://')-$(date +%Y%m%d)"
NAME="francois75/vagrant"

docker buildx build --pull -t ${NAME}:${VERSION} -t ${NAME}:latest .
docker push ${NAME}:${VERSION}
docker push ${NAME}:latest
