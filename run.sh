#!/bin/sh -e

for d in $(ls -d */); do
    echo "######################################"
    echo "## $d"
    echo "######################################"
    cd "$d"
    docker-compose build --pull
    docker-compose up -d --pull always
    cd - &> /dev/null
    echo ""
done
