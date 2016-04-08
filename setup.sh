#!/bin/bash

echo "***************DOWNLOADING RUBY TTT GEM***************"
git clone git@github.com:andarcabrera/tttj_gem.git

echo "***************DOWNLOADING COB SPEC***************"
git clone git@github.com:8thlight/cob_spec.git

echo "***************DDOWNLOADING HTTP SERVER APP***************"
git clone git@github.com:andarcabrera/HTTPServer.git
cwd=$(pwd)
echo $cwd

echo "***************PACKAGING COB SPEC***************"
cd cob_spec
mvn package
cd ..

echo "***************PACKAGING HTTP SERVER***************"
cd HTTPServer
mvn package
echo "***************STARTING SERVER***************"
echo "$cwd/cob_spec/public"
java -cp lib/jruby/jruby-complete/1.7.12/jruby-complete-1.7.12.jar:target/HTTPServer-1.0-SNAPSHOT.jar StartServer -p 5000 -d "$cwd/cob_spec/public"

