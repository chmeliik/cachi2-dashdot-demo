#!/bin/bash
set -o errexit -o nounset -o pipefail -o xtrace

DIR=${1:-'.'}

sed 's|^\s*run |RUN source /cachi2/cachi2.env \&\& \\\n    |i' "$DIR/Dockerfile" |
    tee Dockerfile.cachi2
trap 'rm Dockerfile.cachi2' EXIT

podman build "$DIR" \
    -t cachi2-dashdot \
    -f Dockerfile.cachi2 \
    -v "/tmp/cachi2-output:/cachi2:z" \
    --network none
