FROM ubuntu:22.04
MAINTAINER chanwit.kepha@gmail.com

SHELL ["/bin/bash", "-c"] 

RUN DEBIAN_FRONTEND=noninteractive apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils software-properties-common \
    sudo wget vim zip unzip traceroute iputils-ping net-tools gcc+ cmake iptraf-ng nmap \ 
    git-core openssh-server lsb-release curl locales python3-pip python3-dev 

ENV HOME=/root

USER root
WORKDIR $HOME

# CMD ["/sbin/init"] 
