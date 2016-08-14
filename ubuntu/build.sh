#!/usr/bin/env bash

for i in *; do
    pushd $i
    docker build -t ubuntu:${i}-server .
    popd
done
