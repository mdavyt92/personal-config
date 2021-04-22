#!/bin/bash

echo "-> Configuring home"
pushd home
bash install.sh
popd

echo "-> Installing binaries and scripts"
pushd bin
bash install.sh
popd
