#/usr/bin/bash
# Author: Gaurav Sablok
# Universitat Potsdam
# Date: 2024-3-7 
read -r -p "enter the image name:" image
wget -f https://hub.docker.com/_/$image

for i in $(grep https://git.launchpad.net/cloud-images *.html | \
grep dist-[a-z][a-z][a-z][a-z][a-z]-amd64 -o | cut -f 2 -d "-"); \
        do echo $i:latest; done && for i in $(grep cloud-images-release-manager *.html \
    | cut -f 1,2 -d "\"" | cut -f 2 -d "+" | cut -f 3 -d "/"); \
do echo $i:latest; done
