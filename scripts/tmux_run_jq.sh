#!/usr/bin/env bash

buffer_content="$(tmux show-buffer)"
http_status=$(curl -s -o /dev/null -w '%{http_code}' ${buffer_content})

if [ ${http_status} -eq 200 ]; then
    json="$(curl -s $buffer_content | jq  .)"
    if [ $? -eq 0 ]; then
        echo "$json"
    else
        echo "Error: could not parse the resource of $buffer_content"
    fi
else
    echo "Error: got $http_status for the resource $buffer_content"
fi