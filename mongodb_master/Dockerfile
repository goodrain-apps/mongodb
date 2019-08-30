FROM ubuntu:14.04

ADD mongodb_master.conf /etc/
RUN apt-get clean \
&& apt-get update \
&& apt-get install -y vim wget iproute openssh-server \
&& wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.2.tgz \
&& tar -zxvf mongodb-linux-x86_64-3.4.2.tgz \
&& mv mongodb-linux-x86_64-3.4.2/ /usr/local/mongodb  \
&& cp /etc/mongodb_master.conf  /usr/local/mongodb \
&& cd /usr/local/mongodb \
&& mkdir -p conf \
&& mkdir -p logs \
&& mkdir -p data \
&& cd bin/ \
&& ./mongod -f /etc/mongodb_slave.conf \

# Create the MongoDB data directory
#RUN mkdir -p /data/db

#EXPOSE 27017
