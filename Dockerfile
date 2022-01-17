FROM ubuntu:18.04
WORKDIR /root/sdk

RUN apt-get update && apt-get install -y wget tar
RUN wget https://golang.org/dl/go1.17.6.linux-amd64.tar.gz
RUN tar -xvf go1.17.6.linux-amd64.tar.gz 
RUN mv go /usr/local
RUN mkdir /root/go

ENV GOROOT /usr/local/go
ENV GOPATH /root/go
ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH 
