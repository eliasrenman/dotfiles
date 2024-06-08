#!/bin/bash

# Split the string into an array at spaces
read -ra words <<<"$(xrandr | grep " connected" | awk '{print $1}')"

# Count the length of the array
length=${#words[@]}

if [ -z "$length" ]; then
	exec swaylock
fi
