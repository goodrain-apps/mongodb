FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

ENV MONGO_MAJOR 3.4.2
ADD mongodb_master.conf /etc/
RUN apt-get clean \
&& apt-get update \
&& apt-get install -y vim wget openssh-server \
&& wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.2.tgz \
&& tar -zxvf mongodb-linux-x86_64-3.4.2.tgz \
&& mv mongodb-linux-x86_64-3.4.2/ /usr/local/mongodb  \
&& cp /etc/conf/mongodb_master.conf  /usr/local/mongodb \
&& cd /usr/local/mongodb \
&& mkdir -p conf \
&& mkdir -p logs \
&& mkdir -p data \
&& cd bin/ \
&& ./mongod -f /etc/mongodb_master.conf \
#&& ./mongod -f /etc/mongodb_slave.conf \
#&& ./mongod -f /etc/mongodb_arbiter.conf \

# Create the MongoDB data directory
#RUN mkdir -p /data/db

#EXPOSE 27017
#ENTRYPOINT ["usr/bin/mongod"]
