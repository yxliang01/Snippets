#!/usr/bin/env bash

set +e

NUM_ARGS_WANTED=2

if [[ $# -ne $NUM_ARGS_WANTED ]]; then
	echo 'USAGE: tag_all_instances.sh <Key> <Value>'
fi

ids=()

while read -r id; do
	ids+=($id)
done < <(aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --output text)

echo 'Reponse from AWS:'
# shellcheck disable=SC2068
IFS=' ' aws ec2 create-tags --tags Key="$1",Value="$2" --resources ${ids[@]}

if which dline > /dev/null ; then
	dline wave 100
fi
# shellcheck disable=SC2181
if [[ $? -eq 0 ]]; then
	# shellcheck disable=SC2059
	echo "Add tag successful!"
else
	# shellcheck disable=SC2059
	echo "Add tag failed..."
fi

IFS=' ' echo 'Instances: ' "${ids[@]}"