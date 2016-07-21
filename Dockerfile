FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y upgrade

WORKDIR /src
ADD / /src

RUN java -jar GradleProject.jar

CMD java -jar GradleProject.jar
