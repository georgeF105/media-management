#!/bin/sh

# Input Parameters
ARG_PATH="$3"
ARG_NAME="$2"
ARG_LABEL="N/A"

CONFIG_OUTPUT="/mnt/2630A42C1E187F93"

filebot -script fn:amc --output "$CONFIG_OUTPUT" --action move --conflict skip -non-strict --log-file ~/workspace/media-management/filebot-Rename.log --def plex=localhost:32400 unsorted=y music=y artwork=y excludeList=".excludes" ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"
