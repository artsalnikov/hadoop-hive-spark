#!/bin/bash

mkdir -p ./notebooks
cp -rf ./jupyter/notebook/* ./notebooks/
docker-compose -f ./docker-compose.yml up -d
