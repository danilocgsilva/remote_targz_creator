#!/bin/bash

## version
VERSION="0.0.0"

generate_local_sh () {
  touch $temporary_local_shell_file
}

## Main function
rtcreator () {

  local temporary_local_shell_file=/tmp/$(date +%Y%m%d-%Hh%Mm%Ss).sh

  generate_local_sh

  echo Script goes here...
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ /usr/local/bin/shellutil != /usr/local/bin/shellutil ]]; then
  export -f rtcreator
else
  rtcreator "${@}"
  exit 0
fi
