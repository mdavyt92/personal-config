#!/bin/bash

echo "--> Creating directory for custom binaries"
mkdir -p ~/.bin

echo "--> Adding directory to PATH"
grep -q "export PATH=\$PATH:\$HOME/.bin" ~/.bashrc && echo "--- PATH already set" || echo "export PATH=\$PATH:\$HOME/.bin" >> ~/.bashrc

echo "--> Copying binaries to custom dir"
shopt -s extglob
find . -maxdepth 1  -type f  ! -name "install.sh" -exec cp {} ~/.bin/ \;
