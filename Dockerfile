# ubuntu-13.10
# VERSION               0.0.4
FROM stackbrew/ubuntu:13.10
MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"
RUN (locale-gen en_US en_US.UTF-8 && dpkg-reconfigure locales)
RUN (apt-get update && apt-get upgrade -y -q && apt-get dist-upgrade -y -q)
RUN (apt-get install -y -q nano && echo 'root:rootprovisional' |chpasswd )
