#!/bin/bash

docker build --tag winkelstein_docker . && docker run -it --name tester --rm -v $(pwd):/project winkelstein_docker /bin/zsh
