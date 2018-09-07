#!/bin/bash

shopt -s extglob
echo "Working"

REPLACE_WHAT=`jq ".parameters.replace_what" -r /data/config.json`
REPLACE_WITH=`jq ".parameters.replace_with" -r /data/config.json`


find /data -name '*.csv' -type f | xargs -n1 sed -i "s/${REPLACE_WHAT}/${REPLACE_WITH}/g"

cp -r /data/in/files /data/out/
cp -r /data/in/tables /data/out/
