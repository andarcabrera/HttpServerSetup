#!/bin/bash

echo "***************STARTING HTTP SERVER***************"

cwd=$(pwd)
echo $cwd
cd HTTPServer
java -cp lib/jruby/jruby-complete/1.7.12/jruby-complete-1.7.12.jar:target/HTTPServer-1.0-SNAPSHOT.jar StartServer -p 5000 -d "$cwd/cob_spec/public"