#!/bin/bash

# moves given file to 'to be sorted file'

# Input Parameters
ARG_PATH="$3"
ARG_NAME="$2"
ARG_LABEL="N/A"

CONFIG_OUTPUT="/mnt/2630A42C1E187F93/To be sorted"

output='ARG_PATH:'$ARG_PATH'  ARG_NAME:'$ARG_NAME'  ARG_LABEL:'$ARG_LABEL

echo >> $output ../.log 
