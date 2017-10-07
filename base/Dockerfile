FROM ubuntu:14.04
MAINTAINER thefed

#Install Base packages
RUN apt-get update
RUN apt-get install git wget curl sudo software-properties-common unzip python-pip -y

#Create base dirs
RUN mkdir -p /opt

# Add directories from src dir.. 
ADD ./src/root_bashrc /root/.bashrc

# Add Python
RUN sudo pip install awscli

# Export Directories to host 
VOLUME ["/var/log"]
VOLUME ["/home"]
