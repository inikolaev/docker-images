FROM debian:jessie

USER root
RUN apt-get update
RUN apt-get install -y wget

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

