#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"
docker run --device /dev/fuse --cap-add SYS_ADMIN --env VARIANT=current --rm -it --init -v "${PWD}/../../../":/source valeronoi-appimage-current /source/tools/appimage/.docker/in_docker.sh
