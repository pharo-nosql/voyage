#!/bin/bash

./rs-createDbDirectories.sh
./rs-serve.sh

# wait a bit
sleep 7s

./rs-initiateRS.sh
