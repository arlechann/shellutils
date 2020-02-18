#!/bin/bash

REPOSITORY_ROOT=$(cd $(dirname $0)/..; pwd)

$REPOSITORY_ROOT/shelltest/src/assert_equal "seq 10 | $REPOSITORY_ROOT/bin/sumf" '55\n'
$REPOSITORY_ROOT/shelltest/src/assert_equal "seq 100 | $REPOSITORY_ROOT/bin/sumf" '5050\n'
