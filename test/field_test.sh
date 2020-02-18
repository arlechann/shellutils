#!/bin/bash

REPOSITORY_ROOT=$(cd $(dirname $0)/..; pwd)

$REPOSITORY_ROOT/shelltest/src/assert_equal "seq 10 | xargs -n2 | $REPOSITORY_ROOT/bin/field" '1 2\n3 4\n5 6\n7 8\n9 10\n'
$REPOSITORY_ROOT/shelltest/src/assert_equal "seq 100 | xargs -n5 | $REPOSITORY_ROOT/bin/field 3" '3\n8\n13\n18\n23\n28\n33\n38\n43\n48\n53\n58\n63\n68\n73\n78\n83\n88\n93\n98\n'
