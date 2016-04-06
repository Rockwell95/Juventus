#!/bin/bash

for (( i = 1; i <= 5; i++ )); do
  #statements
  if [ "$i" != "5" ]; then
    bash daily.sh $i $((i+1))
  else
    bash daily.sh $i 1
  fi

done
