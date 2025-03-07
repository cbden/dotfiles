#!/bin/bash

BASEPATH=$(pwd "$0")

if [ ! -d "${HOME}/.config" ]; then
  mkdir ${HOME}/.config
fi

while IFS= read -r line; do
  IFS=\; read -r from to <<< "$line"
  ln -sf "${BASEPATH}/$from" "${HOME}/$to"
done < MANIFEST

exit 0
