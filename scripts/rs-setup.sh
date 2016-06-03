#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/rs-createDbDirectories.sh
$DIR/rs-serve.sh

# wait a bit
sleep 7s

$DIR/rs-initiateRS.sh
