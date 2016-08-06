#!/bin/bash

# moves given file to 'to be sorted file'

# Input Parameters
ARG_PATH="$3"
ARG_NAME="$2"
ARG_LABEL="N/A"

CONFIG_OUTPUT="/mnt/2630A42C1E187F93/To be sorted/"

output='ARG_PATH:'$ARG_PATH'  ARG_NAME:'$ARG_NAME'  ARG_LABEL:'$ARG_LABEL

echo "test output here:"$output
echo $output >> /tmp/.media-man.log
echo "input: "$ARG_PATH"/"$ARG_NAME "  output:"$CONFIG_OUTPUT"/"$ARG_NAME >> /tmp/.media-man.log

cp $ARG_PATH"/"$ARG_NAME $CONFIG_OUTPUT"/"$ARG_NAME