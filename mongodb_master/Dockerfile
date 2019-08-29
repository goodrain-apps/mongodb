FROM ubuntu:14.04

RUN apt-get update \ 
&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

ENV MONGO_MAJOR 3.2
ADD mongodb_master.conf /usr/local/mongodb
# Install MongoDB
RUN echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list \
&& apt-get update \ 
&& apt-get install -y vim wget iproute openssh-server mongodb-org \
&& mongodb-org=3.2.9 mongodb-org-server=3.2.9 mongodb-org-shell=3.2.9 mongodb-org-mongos=3.2.9 mongodb-org-tools=3.2.9 \
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
