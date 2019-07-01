#!/bin/bash

docker pull arangodb:3.4
docker run -d -e ARANGO_NO_AUTH=1 -p 8529:8529 arangodb:3.4 

sleep 2

n=0
# timeout value for startup
timeout=60 
while [[ (-z `curl -s 'http://127.0.0.1:8529/_api/version' `) && (n -lt timeout) ]] ; do
  echo -n "."
  sleep 1s
  n=$[$n+1]
done

if [[ n -eq timeout ]];
then
    echo "Could not start ArangoDB. Timeout reached."
    exit 1
fi

echo "ArangoDB is up"
