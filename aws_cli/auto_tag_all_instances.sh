#!/usr/bin/env bash

set +e

NUM_ARGS_WANTED=3

if [[ $# -ne $NUM_ARGS_WANTED ]]; then
	echo 'USAGE: auto_tag_all_instances.sh <Interval> <Key> <Value>'
	echo 'Interval is in seconds'
fi

interval=$1
key=$2
value=$3

thisDir=$(dirname "$0")
watch -n "$interval" "$thisDir"/tag_all_instances.sh "$key" "$value"