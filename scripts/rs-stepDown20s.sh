#!/bin/bash

mongo --port 27031 --eval 'rs.stepDown(20)'
