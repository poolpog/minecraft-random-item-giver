#!/usr/bin/env bash

# This script has the following ASSUMPTIONS
#    * minecraft **server** is running inside a Gnu Screen session
#    * Screen session has been named "minecraft"

TO_USER="${1}"

GIVE=$(./minecraft-give.sh  "${TO_USER}")

# Show what's being given
echo "${GIVE}"

# Fix the string so it works when injected into Screen
GIVE=$( printf "$GIVE\r" )

# Inject item into Screen
screen -x minecraft -p 0 -X stuff "$GIVE"

