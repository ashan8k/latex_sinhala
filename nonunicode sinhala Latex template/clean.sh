#!/bin/bash

# CLEAN UP
shopt -s extglob nocaseglob
for file in !(@(*.sty|*.pdf|*.tex|*.sh|*.cls|*.ttf)); do
    [[ -f "${file}" ]] && files+=( "${file}" )
done
(( ${#files[@]} )) && rm "${files[@]}"
