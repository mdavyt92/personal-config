#!/bin/bash

echo "--> Copying dot files"
find . -maxdepth 1 -type f  -iname ".*" -exec cp {} ~/ \;

echo "--> Sourcing custom .bashrc files"
for file in .*.bashrc; do
  grep -q "source ~/$file" ~/.bashrc || echo "source ~/$file" >> ~/.bashrc
done
