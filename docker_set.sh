#! /bin/bash

source=/Users/$USER/Library/Containers/com.docker.docker
dest=/goinfre/$USER/docker

rm -rf $source
rm -rf $dest
mkdir $dest

ln -s $dest $source
