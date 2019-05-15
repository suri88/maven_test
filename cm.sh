#!/bin/bash
while read line; do
  if [[ $line =~ release ]] ; then
  echo "push to artifactory $line"
  else
  echo "not maching"
  fi
  done <ss.txt
