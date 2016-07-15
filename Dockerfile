FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y upgrade

 
RUN apt-get install -y default-jre
RUN apt-get install -y default-jdk
 
 WORKDIR /src
 ADD / /src
 
 RUN java -jar GradleProject.jar
 
 CMD  java -jar GradleProject.jar



