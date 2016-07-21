FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python python-pip wget
