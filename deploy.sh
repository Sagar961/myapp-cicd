#!/bin/bash

docker stop myapp || true
docker rm myapp || true

docker build -t myapp .

docker run -d \
-p 8080:80 \
--name myapp \
myapp
