
FROM alpine:3.4

RUN apt-get update
RUN apt-get -y upgrade

RUN \
  apt-get install -y software-properties-common && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  sudo add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

#RUN apt-get install -y default-jre
#RUN apt-get install -y default-jdk

WORKDIR /src
ADD / /src

RUN java -jar GradleProject.jar

CMD java -jar GradleProject.jar
