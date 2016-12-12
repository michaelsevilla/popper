#!/bin/bash
set -e -x

# build deb packages
rm -f vagrant/debs/*
docker build -t kernel-ci docker/
docker run --rm -ti \
  -e CHECK_KEY=false \
  -v `pwd`/docker/linux:/linux \
  -v `pwd`/patches:/app/patches \
  kernel-ci
cp docker/linux/*.deb vagrant/debs/

# provision new kernel and start VM
(cd vagrant && ./provision.sh)

# run test
(cd vagrant && vagrant ssh -c './run_test')
