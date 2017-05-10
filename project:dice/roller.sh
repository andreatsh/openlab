#!/bin/bash

# Define some useful paths
DATADIR="$PWD/data"
EXECUTABLE="$HOME/openlab/project:dice/dice"

# Define an array in Bash
declare -a thrownumbers=( 100 1000 10000 )

# Loop over dice number to roll
for dice in $(seq 2 5);
do
  # Loop over faces number
  for faces in 6 8 10;
  do
    # Loop over previous declared array
    for n in ${thrownumbers[*]};
    do
        # Create necessary data folders. Here we use the flag -p (--parent)
        # no error if folder existing and ake parent directories as needed
        mkdir -p "$DATADIR/$faces"
        $EXECUTABLE $dice $faces $n > "$DATADIR/$faces/m$dice-d$faces-n$n.out"
    done
  done
done

