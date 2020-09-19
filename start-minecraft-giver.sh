#!/usr/bin/env bash
NO_ITEMS="${1:-10}"
WAIT="${2:-300}"

while true; do
    for i in {1..${NO_ITEMS}} ; do
        ./do-minecraft-give.sh  
        sleep 1
    done
    for j in {1..${WAIT}}; do
        echo -n "$j. "
        sleep 1
    done
done

