#!/bin/bash

## version
VERSION="0.0.0"

## Main function
remote_targz_creator () {
  echo Script goes here...
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ /usr/local/bin/shellutil != /usr/local/bin/shellutil ]]; then
  export -f remote_targz_creator
else
  remote_targz_creator "${@}"
  exit 0
fi
