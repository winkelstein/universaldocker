#!/bin/bash

docker rmi -f winkelstein_docker && docker build --tag winkelstein_docker . && docker run -it winkelstein_docker zsh
