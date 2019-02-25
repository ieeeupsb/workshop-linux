#!/bin/bash
shopt -s nullglob

array=(*.md)
a_size=${#array[@]}

for ((i = 0; i < a_size; ++i)); do
  if [[ i -eq a_size-1 ]]; then
    cat ${array[$i]} >> main
    break
  fi
  cat ${array[$i]} >> main
  echo -e "\n---\n" >> main
done

mv main ../main.md
