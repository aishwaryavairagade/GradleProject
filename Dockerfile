FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean
 
 #RUN apt-get install -y default-jre
 #RUN apt-get install -y default-jdk
 
 WORKDIR /src
 ADD / /src
 
 RUN java -jar GradleProject.jar
 
 CMD  java -jar GradleProject.jar



