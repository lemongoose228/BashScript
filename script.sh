#!/bin/bash

read n

conversations=()

for ((i=0; i<n; i++)); do
	read start end
	for ((j=$start; j<=$end; j++)); do
		conversations[$j]=$((conversations[$j] + 1))
	done
done

max_conversations=0
max_time=0

for ((i=0; i<=10000; i++)); do
	if ((conversations[$i] > max_conversations)); then
		max_conversations=${conversations[$i]}
		max_time=$i
	fi
done
