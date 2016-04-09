# Java HTTP Server

This is an installer helper for [Java HTTP Server](https://github.com/andarcabrera/HTTPServer) setup.

It clones 3 projects:
- [Java HTTP Server](https://github.com/andarcabrera/HTTPServer);
- [TTT Gem](https://github.com/andarcabrera/tttj_gem);
- [cob_spec](https://github.com/8thlight/cob_spec);

## Requirement
- maven
- ruby ~> 2.2.1

## Installation

- clone repository
- from root directory (HttpServerSetup) run:
  ```
  ./setup.sh
  ```

## Usage

1. Launch cob_spec:

  - From root directory (HttpServerSetup) run:
    ```
    ./startCobspecServer
    ```

    OR

  - Download and follow the configuration instructions in the [cob_spec_repo](https://github.com/8thlight/cob_spec)


2. Start server:


  - From root directory (HttpServerSetup) run
    ```
    ./startHttpServer
    ```

    OR

  - From HttpServer directory package (```mvn package```) and start the server with the below command by updating with your path to the cob_spec/public directory

  ```
      java -cp lib/jruby/jruby-complete/1.7.12/jruby-complete-1.7.12.jar:target/HTTPServer-1.0-SNAPSHOT.jar   StartServer -p 5000 -d [/YOUR/PATH/TO/cob_spec/public]
  ```

3. Run cob_spec tests at [http://localhost:9090/HttpTestSuite?suite](http://localhost:9090/HttpTestSuite?suite)
4. Play TTT game at [http://localhost:5000/games](http://localhost:5000/games)
