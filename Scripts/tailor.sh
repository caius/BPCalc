#!/bin/sh

[[ "$TRACE" ]] && set -o xtrace
set -o errexit
set -o nounset
set -o pipefail
set -o noclobber

if hash tailor 2>/dev/null; then
  tailor
else
  echo "warning: Please install Tailor from https://tailor.sh"
fi
