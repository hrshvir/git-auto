FROM ubuntu:latest 

WORKDIR /home/ubuntu 

RUN apt update -y 
RUN apt install git -y 
RUN apt install -y net-tools




