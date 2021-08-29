#!/bin/bash
source ~/.bashrc
THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"
echo "$(basename "${BASH_SOURCE[0]}"): THIS_SCRIPT_DIR=$THIS_SCRIPT_DIR"
source "$THIS_SCRIPT_DIR/../project2/setup-env.sh"
cd "$(pwd)"