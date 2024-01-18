#!/bin/bash

command="pscale branch create $1 $2 --org $3"

if [ -n "$4" ];then
  command="$command --from $4"
fi

eval $command
