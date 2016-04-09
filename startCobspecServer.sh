#!/bin/bash

echo "***************STARTING COB SPEC SERVER***************"

cwd=$(pwd)
echo $cwd
cd cob_spec
java -jar fitnesse.jar -p 9090