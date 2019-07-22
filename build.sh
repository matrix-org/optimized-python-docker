#! /bin/bash

set -euox pipefail

LTO=1 OPTIMAL=1 MARCH=$MARCH PYTHON_VERSION=$PYTHON_VERSION make build-image
docker save matrixdotorg/optimised-python:$PYTHON_VERSION-optimized-lto-$MARCH | gzip -9 > docker.tar.gz