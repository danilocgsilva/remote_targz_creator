#!/bin/bash

## version
VERSION="0.0.0"

generate_local_sh () {
  cat > $temporary_local_shell_file <<EOF
#!/bin/bash

local_files_location=~/$script_identifier
mkdir \$local_files_location
cp -r $server_path \$local_files_location

EOF
}

## Main function
rtcreator () {

  local script_identifier=$(date +%Y%m%d-%Hh%Mm%Ss)
  local temporary_local_shell_file=/tmp/temporary_rtcreator_$script_identifier.sh
  local server_path
  local server_address
  local server_user
  local pem_file

  read -p "Please, provides the server path: " server_path
  read -p "Please, provides the server address: " server_address
  read -p "Please, provides the server user: " server_user
  read -p "Please, provides the permission file (.pem), or left blank if any: " pem_file

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
