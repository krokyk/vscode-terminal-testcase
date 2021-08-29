#!/bin/bash
source ~/.bashrc
THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"
cd "$THIS_SCRIPT_DIR/../$STARTUP_DIR"
unset STARTUP_DIR
echo "$(basename "${BASH_SOURCE[0]}"): THIS_SCRIPT_DIR=$THIS_SCRIPT_DIR"
source "$THIS_SCRIPT_DIR/../project2/setup-env.sh"