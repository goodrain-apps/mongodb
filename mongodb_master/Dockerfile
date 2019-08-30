FROM ubuntu:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
ADD mongodb_master.conf /usr/local/mongodb
# Install MongoDB
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-3.2.list \
&& apt-get update \ 
&& apt-get install -y mongodb-org --force-yes \
&& service mongod start
#&& apt-get install -y vim wget iproute openssh-server  \
#&& cp  /etc/mongodb_master.conf  /usr/local/mongodb \
#&& cd /usr/local/mongodb \
#&& mkdir -p conf \
#&& mkdir -p logs \
#&& mkdir -p data \
#&& cd bin/ \
#&& ./mongod -f /etc/mongodb_master.conf \

# Create the MongoDB data directory
#&& mkdir -p /data/db \
#&& chmod 777 /data/*

#EXPOSE 27017
#ENTRYPOINT ["usr/bin/mongod"]
