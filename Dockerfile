FROM ubuntu:22.04
MAINTAINER chanwit.kepha@gmail.com

SHELL ["/bin/bash", "-c"] 

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get dist-upgrade -y && apt-get install -y apt-utils software-properties-common sudo wget vim zip unzip traceroute iputils-ping net-tools gcc+ cmake iptraf-ng nmap git-core openssh-server lsb-release curl locales 

#RUN add-apt-repository ppa:longsleep/golang-backports
#RUN apt-get update && apt-get install -y golang-go

ENV HOME=/root
#ENV GOPATH=/root/go
#ENV GOBIN=/root/go/bin
#ENV PATH="${PATH}:/root/go/bin"

USER root
WORKDIR $HOME

#CMD ["/sbin/init"] 
