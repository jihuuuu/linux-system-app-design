#!/usr/bin/env bash

# 20233332 Jihu Nam

if [ $# -ne 2 ]; then
  echo "Invalid input"
  exit 1
fi

rows="$1"
cols="$2"

re='^-?[0-9]+$'
if ! [[ $rows =~ $re && $cols =~ $re ]]; then
  echo "Invalid input"
  exit 1
fi

if [ "$rows" -lt 1 ] || [ "$cols" -lt 1 ]; then
  echo "Input must be greater than 0"
  exit 1
fi

for ((i=1; i<=rows; i++)); do
  for ((j=1; j<=cols; j++)); do
    printf "%d*%d=%d" "$i" "$j" $((i*j))
    if (( j < cols )); then printf " "; fi
  done
  printf "\n"
done
