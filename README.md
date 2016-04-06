# Java HTTP Server

This is a helper for [Java HTTP Server](https://github.com/andarcabrera/HTTPServer) setup.

It clones 3 projects:
- [Java HTTP Server](https://github.com/andarcabrera/HTTPServer)
- [TTT Gem](https://github.com/andarcabrera/tttj_gem)
- [cob_spec](https://github.com/8thlight/cob_spec)


## Installation
Clone the repository and run:
```./setup.sh```    

## Usage

1. Configure cob_spec:

Follow the configuration instructions in the [cob_spec_repo](https://github.com/8thlight/cob_spec)

2. Install server:

- cd in server directory
- package ```mvn package```
- run server and pass arguments for port number and cob spec public directory (port 5000 is cob_spec default); e.g. ``` java -jar [/YOUR/PROJECT/PATH/java/HTTPServer/target/HTTPServer-1.0-SNAPSHOT.jar -p 5000 -d /YOUR/COBSPEC/PATH/cob_spec/public```
