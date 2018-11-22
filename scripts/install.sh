#!/usr/bin/env bash

set -ex

composer create-project \
    -v \
    --remove-vcs \
    --no-install \
    --ignore-platform-reqs \
    --no-scripts \
    gbmcarlos/skellington \
    app \
    dev-develop

cd app

composer run-script compose-skeleton -- "$@"