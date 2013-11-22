# ubuntu-13.10
# VERSION               0.0.3

FROM stackbrew/ubuntu:13.10

MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"

# to fix some problem

RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales

# make sure the package repository is up to date

RUN apt-get update
RUN apt-get upgrade -y -q
RUN apt-get dist-upgrade -y -q

# prefered editor

RUN apt-get install -y -q nano

# change password

RUN echo 'root:rootprovisional' |chpasswd
