#!/bin/bash

# moves given file to 'to be sorted file' and then runs filebot rename script on it

# Input Parameters
ARG_PATH="$3"
ARG_NAME="$2"
ARG_LABEL="N/A"

PENDING_PATH="/mnt/2630A42C1E187F93/To be sorted"
MEDIA_PATH="/mnt/2630A42C1E187F93"

output='ARG_PATH:'$ARG_PATH'  ARG_NAME:'$ARG_NAME'  ARG_LABEL:'$ARG_LABEL

echo $output >> /tmp/.media-man.log
INPUT=$ARG_PATH"/"$ARG_NAME
OUTPUT=$PENDING_PATH

cp -R "$INPUT" "$OUTPUT"

filebot -script fn:amc --output "$MEDIA_PATH" --action move --conflict auto -non-strict --log-file /tmp/.media-man.log --def plex=localhost:32400 unsorted=y music=y artwork=y excludeList=".excludes" ut_dir="$PENDING_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"
