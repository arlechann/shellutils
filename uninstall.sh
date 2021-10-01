#!/bin/bash

SCRIPT_PATH=$(cd $(dirname $0); pwd)

ls $SCRIPT_PATH/bin | xargs -I{} unlink $HOME/bin/{}
unlink $HOME/.docker/cli-plugins
