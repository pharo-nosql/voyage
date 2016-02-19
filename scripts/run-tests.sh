#!/bin/bash 

set -ex

BASELINE="VoyageMongo"
PACKAGES_DIR="mc"
TESTS="Mongo.*|Voyage.*"

# add a default version
if [ -z $PHARO_VERSION ]; then
	PHARO_VERSION="stable"
fi

# download pharo
wget --quiet -O - get.pharo.org/$PHARO_VERSION+vm | bash
# install project
./pharo Pharo.image eval --save "
Metacello new 
	baseline: '$BASELINE';
	repository: 'filetree://$PACKAGES_DIR';
	load.
"
# execute tests
./pharo Pharo.image test --no-xterm --fail-on-failure "$TESTS" 2>&1
