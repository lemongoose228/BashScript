#!/bin/bash

read n

conversations=()

for ((i=0; i<n; i++)); do
    read start end
    for ((j=$start; j<=$end; j++)); do
        conversations[$j]=$((conversations[$j] + 1))
    done
done
