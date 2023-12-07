#!/usr/bin/sh
# Simple script for sort history file
way=$HOME/.local/state/bash/history
awk '! seen[$0]++' $way > $way.1
cat $way.1 > $way
