# Ubuntu 18.04 with Java 8 installed.

# Build image with: sudo docker build -t demets/ubuntu1804java8:20180607 .

FROM ubuntu:18.04

MAINTAINER Dmitry Emets

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean