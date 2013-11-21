# ubuntu_13.10
# VERSION               0.0.2

FROM stackbrew/ubuntu:13.10

MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"

# to fix some problem

#RUN locale-gen en_CA.UTF-8

# make sure the package repository is up to date

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

# prefered editor

RUN apt-get install -y nano

# change password

RUN echo 'root:rootprovisional' |chpasswd
