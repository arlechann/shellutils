#!/bin/bash

SCRIPT_PATH=$(cd $(dirname $0); pwd);

[ -d "$SCRIPT_PATH/shelltest" ] || git clone https://github.com/arlechann/shelltest
find $SCRIPT_PATH/test -type f | xargs -n1 bash 
