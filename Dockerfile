FROM ubuntu:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

ENV MONGO_MAJOR 3.0
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list

# Install MongoDB
RUN apt-get update
RUN sudo apt-get install -y mongodb-org=3.0.4 mongodb-org-server=3.0.4 mongodb-org-shell=3.0.4 mongodb-org-mongos=3.0.4 mongodb-org-tools=3.0.4

# Create the MongoDB data directory
RUN mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]