#
# OpenJDK Java 7 JDK Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/openjdk-7-jdk
#

# Pull base image.
FROM ubuntu:14.04

# Install Java.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get update && \
  apt-get install -y openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*


# Java Version and other ENV
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 \
    WORKDIR=/docker-checkmarx \
    CX_CLI_VERSION=7.5.0.2


WORKDIR /docker-checkmarx

COPY . /docker-checkmarx

RUN curl -L http://download.checkmarx.com/8.0.1/Plugins/CxConsolePlugin-CLI-${CX_CLI_VERSION}.zip -o ./cx.zip && \
  unzip cx.zip -d cx


