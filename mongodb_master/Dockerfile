FROM ubuntu:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

ENV MONGO_MAJOR 3.2
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list

# Install MongoDB
RUN apt-get update \ 
&& apt-get install -y vim wget iproute openssh-server \
&& mongodb-org=3.2.9 mongodb-org-server=3.2.9 mongodb-org-shell=3.2.9 mongodb-org-mongos=3.2.9 mongodb-org-tools=3.2.9
&& cp  /etc/mongodb_master.conf  /usr/local/mongodb \
&& cd /usr/local/mongodb \
&& mkdir -p conf \
&& mkdir -p logs \
&& mkdir -p data \
&& cd bin/ \
&& ./mongod -f /etc/mongodb_master.conf \

# Create the MongoDB data directory
&& mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]
