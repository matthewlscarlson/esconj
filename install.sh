#!/bin/sh

[ "$(id -u)" -ne 0 ] && echo 'Permission denied. Are you root?' && exit 1

DIR='/usr/share/esconj/'
path='/usr/bin/'

mkdir -p "${DIR}"
echo "./verbs.csv -> ${DIR}/verbs.csv"
cp './verbs.csv' "${DIR}/verbs.csv"
echo "./esconj -> ${path}/esconj"
cp './esconj' "${path}/esconj"

echo 'Installation complete.'
