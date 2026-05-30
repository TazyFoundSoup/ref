#!/bin/bash

DIR="$HOME/.ss"
mkdir -p DIR

if [ "$1" = "-works"]; then
    echo "ss is working"
    exit 0
fi
