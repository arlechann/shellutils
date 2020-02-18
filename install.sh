#!/bin/bash

SCRIPT_PATH=$(cd $(dirname $0); pwd)

mkdir -p $HOME/bin
ls $SCRIPT_PATH/bin | xargs -I{} unlink $HOME/bin/{} 2> /dev/null
ls $SCRIPT_PATH/bin | xargs -I{} ln -s $SCRIPT_PATH/bin/{} $HOME/bin
