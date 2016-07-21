FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y upgrade




CMD java -jar GradleProject.jar
