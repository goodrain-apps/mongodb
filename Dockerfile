#version 1.0
from ubuntu
#maintainer 
maintainer hdx

#install 
run apt-get clean
run apt-get update
run apt-get install -y vim
run apt-get install -y openssh-server
run mkdir -p /var/run/sshd

#open port 22 20001
expose 22
expose 20001
#cmd ["/usr/sbin/sshd","-D"]

run apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

run echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main">/etc/apt/sources.list.d/mongodb-org.list
#install mongodb
run apt-get update
run apt-get install -y mongodb-org
#create the mongodb data directory
run mkdir -p /data/db
entrypoint ["usr/bin/mongod"]