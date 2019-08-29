FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

ENV MONGO_MAJOR 3.4.2
ADD conf/* /etc/
RUN curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.2.tgz \
&& tar -zxvf mongodb-linux-x86_64-3.4.2.tgz \
&& mv mongodb-linux-x86_64-3.4.2/ /usr/local/mongodb \
&& cd /usr/local/mongodb \
&& mkdir -p conf \
&& mkdir -p logs \
&& mkdir -p data \
#&& ./mongod -f /etc/mongodb_master.conf \
#&& ./mongod -f /etc/mongodb_slave.conf \
#&& ./mongod -f /etc/mongodb_arbiter.conf \

# Install MongoDB
#RUN apt-get update
#RUN sudo apt-get install -y mongodb-org=3.0.4 mongodb-org-server=3.0.4 mongodb-org-shell=3.0.4 mongodb-org-mongos=3.0.4 mongodb-org-tools=3.0.4

# Create the MongoDB data directory
#RUN mkdir -p /data/db

#EXPOSE 27017
#ENTRYPOINT ["usr/bin/mongod"]
