# Java HTTP Server

This is a helper for [Java HTTP Server](https://github.com/andarcabrera/HTTPServer) setup.

It clones 3 projects:
- [Java HTTP Server](https://github.com/andarcabrera/HTTPServer);
- [TTT Gem](https://github.com/andarcabrera/tttj_gem);
- [cob_spec](https://github.com/8thlight/cob_spec);

## Installation

- clone repository
- ```cd HttpServerSetup/```
- ```./setup.sh```

## Usage

1. Launch cob_spec:

  - Open new terminal tab
  - From HttpServerSetup/cob_spec directory run 'java -jar fitnesse.jar -p 9090'

    OR
  - Follow the configuration instructions in the [cob_spec_repo](https://github.com/8thlight/cob_spec)

  Note: the bash script should automatically package cob_spec. If you get an error you should run 'mvn package' in the cob_spec directory

2. Install server:

  If server does not automatically launch from the bash script:

  - From HttpServerSetup ```cd HttpServer```
  - package ```mvn package```
  - start server passing arguments for port number and cob spec public directory (port 5000 is cob_spec default):

``` java -cp lib/jruby/jruby-complete/1.7.12/jruby-complete-1.7.12.jar:target/HTTPServer-1.0-SNAPSHOT.jar   StartServer -p 5000 -d [/YOUR/PATH/TO/cob_spec/public]```

3. Run tests at [http://localhost:9090/HttpTestSuite?suite](http://localhost:9090/HttpTestSuite?suite)
4. Play TTT game at [http://localhost:5000/games](http://localhost:5000/games)
