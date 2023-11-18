#!/bin/bash

docker build --tag winkelstein_docker .
docker run -it winkelstein_docker zsh
