
FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y mercurial git-core

RUN hg clone https://code.google.com/p/go
RUN cd /go && hg update go1.2

ENV GOROOT /go
ENV GOBIN /go/bin

RUN apt-get install -y gcc g++ make build-essential 

RUN cd /go/src && ./make.bash
ENV PATH $PATH:/go/bin
