#! /bin/bash

set -euo pipefail

LTO=1 OPTIMAL=1 PYTHON_VERSION=3.7.4 make build-image

# Output it, so we can upload it on a trusted machine
docker save matrixdotorg/optimised-python:3.7.4-optimized-lto | gzip -9 > docker.tar.gz