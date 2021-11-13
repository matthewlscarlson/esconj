#!/bin/sh

[ "$EUID" -ne 0 ] && echo "Permission denied. Are you root?" && exit

DIR='/usr/share/esconj'
PATH='/usr/bin/'

mkdir --parents "${DIR}"
echo "./verbs.csv -> ${DIR}/verbs.csv" && cp './verbs.csv' "${DIR}/verbs.csv"
echo "./esconj -> ${PATH}/esconj" && cp './esconj' "${PATH}/esconj"

[ $? -eq 0 ] && echo "Installation complete."
