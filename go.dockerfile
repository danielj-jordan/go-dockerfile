##
##  setup ubuntu docker image for GO language development
##
FROM ubuntu
MAINTAINER Daniel Jordan

RUN apt-get -qq update
RUN apt-get update
RUN apt-get -qq -y install gcc
RUN apt-get -qq -y install curl
RUN apt-get -qq -y install git
RUN apt-get -qq -y install zip
RUN curl -OsL https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz
RUN rm go1.11.1.linux-amd64.tar.gz
ENV PATH="${PATH}:/usr/local/go/bin"

RUN mkdir /go
RUN mkdir /go/bin
ENV GOPATH="/go"

ENV PATH="${PATH}:/go/bin"
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh