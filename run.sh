#!/bin/bash

docker build . --tag myjenkins
docker run -it -p 8080:8080 -p 50000:50000 --rm --name myjenkins myjenkins
