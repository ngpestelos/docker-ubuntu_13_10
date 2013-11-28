# ubuntu-13.10
# VERSION               0.0.4
FROM stackbrew/ubuntu:13.10
MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"
ENV DEBIAN_FRONTEND noninteractive
RUN (locale-gen en_US en_US.UTF-8 && dpkg-reconfigure locales)
RUN (apt-get update && apt-get upgrade -y -q && apt-get dist-upgrade -y -q && apt-get -y -q autoclean && apt-get -y -q autoremove)
RUN (apt-get install -y -q nano && echo 'root:rootprovisional' |chpasswd )
