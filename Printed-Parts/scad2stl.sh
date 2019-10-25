#!/usr/bin/env bash

IFS=$(echo -en "\n\b")

locations=( \
        "/usr/bin/openscad" \
        "/usr/local/bin/openscad"
    )

FILES=./scad/*

o="none"
for x in "${locations[@]}"
do
    if [[ -f "$x" ]]
    then
        o=$x
    fi
done
if [[ $o == "none" ]]
then
    echo "OpenSCAD binary not found"
    exit
fi

for f in $FILES
do
    echo "[ ] Working on file: $f"
    $o --render -o ${f//scad/stl} $f
done
