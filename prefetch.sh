#!/bin/bash
set -o errexit -o nounset -o pipefail -o xtrace

DIR=${1:-'.'}

cachi2 fetch-deps --package pip --source "$DIR" --output /tmp/cachi2-output
cachi2 generate-env /tmp/cachi2-output --for-output-dir /cachi2 -o /tmp/cachi2-output/cachi2.env
cachi2 inject-files /tmp/cachi2-output --for-output-dir /cachi2
