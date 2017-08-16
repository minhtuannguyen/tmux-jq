#!/usr/bin/env bash

buffer_content="$(tmux show-buffer)"
status=$(curl -s -o /dev/null -w '%{http_code}' ${buffer_content})

if [ ${status} -eq 200 ]; then
    curl -s  "$buffer_content" | jq .
  else
    echo "Got $status for the resource $buffer_content"
fi