FROM ubuntu:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

ENV MONGO_MAJOR 3.2
ADD mongodb_master.conf /usr/local/mongodb
# Install MongoDB
RUN echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list \
&& apt-get update \ 
&& apt-get install -y vim wget iproute openssh-server mongodb-org \
#&& cp  /etc/mongodb_master.conf  /usr/local/mongodb \
#&& cd /usr/local/mongodb \
#&& mkdir -p conf \
#&& mkdir -p logs \
#&& mkdir -p data \
#&& cd bin/ \
#&& ./mongod -f /etc/mongodb_master.conf \

# Create the MongoDB data directory
# && mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]
