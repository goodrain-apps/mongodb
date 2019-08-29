FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
ENV MONGO_MAJOR 3.2
ADD mongodb_master.conf /usr/local/mongodb
# Install MongoDB
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list \
&& apt-get update \ 
&& apt-get install -y mongodb-org mongodb-org=4.0.0 mongodb-org-server=4.0.0 mongodb-org-shell=4.0.0 mongodb-org-mongos=4.0.0 mongodb-org-tools=4.0.0
&& apt-get install -y vim wget iproute openssh-server  \
#&& cp  /etc/mongodb_master.conf  /usr/local/mongodb \
#&& cd /usr/local/mongodb \
#&& mkdir -p conf \
#&& mkdir -p logs \
#&& mkdir -p data \
#&& cd bin/ \
#&& ./mongod -f /etc/mongodb_master.conf \

# Create the MongoDB data directory
&& mkdir -p /data/db \
&& chmod 777 /data/*

EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]
