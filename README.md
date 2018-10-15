# Javascript Docker Container

This project is a defines a docker container that can be used to complete
develop applications in Go  (www.golang.org).

This container includes:
* ubuntu base container
* gcc
* git 
* go

###
Prerequisites

You must have Docker installed on your computer.   Get it at [Docker](http://www.docker.com)  

### Installing

Create your container

```
docker build -t go-image -f  go.dockerfile .
```

After the container is created, you can start it.   This command starts the container
and maps a projects/go-src folder in host computer user directory to /go/src in docker container

```
docker run -it --rm -v ~/projects/go-src:/go/src -h go --name go go-image
```