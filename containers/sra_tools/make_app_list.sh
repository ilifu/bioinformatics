#!/bin/bash

for tool in $( cat $1 ); do
  app_name=$( basename ${tool} | sed 's/\..*//')
  echo "%apprun ${app_name}";
  echo "  exec $tool \"\${@}\""
  echo
done
