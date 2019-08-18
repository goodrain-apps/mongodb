#version 1.0
FROM ubuntu
#maintainer 
MAINTAINER zhangzhen
#install 
RUN apt-get clean \
 && apt-get update \
 && apt-get install -y vim \
 && apt-get install -y openssh-server \
 && mkdir -p /var/run/sshd

#open port 22 20001
EXPOSE 22
EXPOSE 20001
#cmd ["/usr/sbin/sshd","-D"]

RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main">/etc/apt/sources.list.d/mongodb-org.list
#install mongodb
RUN apt-get update && apt-get install -y mongodb-org
#create the mongodb data directory
RUN mkdir -p /data/db
ENTRYPOINT ["usr/bin/mongod"]