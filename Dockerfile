# ubuntu-13.10
# VERSION               0.0.3

FROM stackbrew/ubuntu:13.10

MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"

# to fix some problem

RUN localedef -v -c -i en_US -f UTF-8 en_US.UTF-8

# make sure the package repository is up to date

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

# prefered editor

RUN apt-get install -y nano

# change password

RUN echo 'root:rootprovisional' |chpasswd
