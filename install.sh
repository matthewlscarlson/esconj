#!/bin/sh

[ "$(id -u)" -ne 0 ] && echo 'Permission denied. Are you root?' && exit 1

DIR='/usr/share/esconj/'
PATH='/usr/bin/'

mkdir -p "${DIR}"
echo "./verbs.csv -> ${DIR}/verbs.csv"
cp './verbs.csv' "${DIR}/verbs.csv"
echo "./esconj -> ${PATH}/esconj"
cp './esconj' "${PATH}/esconj"

echo 'Installation complete.'
