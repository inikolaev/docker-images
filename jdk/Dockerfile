FROM debian:jessie

USER root
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get clean

############
# Oracle JDK
############

# Preparation

ENV JAVA_VERSION 7u80
ENV JAVA_BUILD 15
ENV JAVA_HOME /etc/jdk-${JAVA_VERSION}-b${JAVA_BUILD}

# Installation

RUN cd /tmp
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}-linux-x64.tar.gz
RUN mkdir jdk-${JAVA_VERSION}-linux-x64
RUN tar -zxvf jdk-${JAVA_VERSION}-linux-x64.tar.gz --directory jdk-${JAVA_VERSION}-linux-x64 --strip-components=1
RUN mv jdk-${JAVA_VERSION}-linux-x64 ${JAVA_HOME}
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Cleanup

RUN rm jdk-${JAVA_VERSION}-linux-x64.tar.gz
RUN unset JAVA_VERSION

#########
# Testing
#########

RUN env
RUN java -version
RUN javac -version

