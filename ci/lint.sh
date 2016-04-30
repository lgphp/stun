#!/bin/bash

set -e -u -x

export GOPATH=$PWD
export PATH=$GOPATH/bin:$PATH
mkdir -p src/github.com/cydev
cp -R cydev-stun src/github.com/cydev/stun

pushd ${GOPATH}/src/github.com/cydev/stun
    make lint
popd