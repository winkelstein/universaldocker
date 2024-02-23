#!/bin/bash

docker build --tag winkelstein_docker:stable . && docker run -it --name tester --rm -v $(pwd):/project winkelstein_docker:stable /bin/zsh
