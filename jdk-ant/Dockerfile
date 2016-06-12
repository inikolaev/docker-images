FROM inikolaev/jdk:latest

USER root
RUN apt-get update
RUN apt-get install -y wget

#####
# Ant
#####

# Preparation

ENV ANT_VERSION 1.9.7
ENV ANT_HOME /etc/ant-${ANT_VERSION}

# Installation

RUN cd /tmp
RUN wget http://www.us.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz
RUN mkdir ant-${ANT_VERSION}
RUN tar -zxvf apache-ant-${ANT_VERSION}-bin.tar.gz --directory ant-${ANT_VERSION} --strip-components=1
RUN mv ant-${ANT_VERSION} ${ANT_HOME}
ENV PATH ${PATH}:${ANT_HOME}/bin

# Cleanup

RUN rm apache-ant-${ANT_VERSION}-bin.tar.gz
RUN unset ANT_VERSION

#########
# Testing
#########

RUN env
RUN java -version
RUN javac -version
RUN ant -version

