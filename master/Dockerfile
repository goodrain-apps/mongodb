FROM mongo:3.3
MAINTAINER "kivi"

RUN mkdir -p /opt/mongo-replset-script
COPY ./replset.sh /opt/mongo-replset-script
WORKDIR /opt/mongo-replset-script
RUN chmod +x replset.sh