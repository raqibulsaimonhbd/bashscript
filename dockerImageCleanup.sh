#!/bin/bash
IMAGE_ID=$(docker image ls | awk '{print $3}' | awk 'NR>1')
for ID in $IMAGE_ID; do docker image rm -f  $ID ;done
