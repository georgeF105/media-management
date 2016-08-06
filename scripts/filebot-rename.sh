#!/bin/sh

# Input Parameters
ARG_PATH="$3"
ARG_NAME="$2"
ARG_LABEL="N/A"

# Configuration
# CONFIG_OUTPUT="$home/Media" # if this script is called by the deluge user, then $HOME will NOT refer to YOUR user home, but paths such as /var/lib/deluge instead
CONFIG_OUTPUT="/mnt/2630A42C1E187F93" # if this script is called by the deluge user, then $HOME will NOT refer to YOUR user home, but paths such as /var/lib/deluge instead

filebot -script fn:amc --output "$CONFIG_OUTPUT" --action move --conflict skip -non-strict --log-file ~/workspace/media-managment/filebot-Rename.log --def plex=localhost:32400 unsorted=y music=y artwork=y excludeList=".excludes" ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"
# filebot -script fn:amc --output "$CONFIG_OUTPUT" --action move --conflict skip -non-strict --log-file amc.log --def plex=Media-Server:6wCBjC4TT2qBFTzPxq8a unsorted=y music=y artwork=y excludeList=".excludes" ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"