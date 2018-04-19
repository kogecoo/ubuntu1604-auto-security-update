FROM ubuntu:16.04 AS builder

RUN apt-get update

RUN apt-get install -y apt-utils unattended-upgrades

# avoid error https://serverfault.com/a/797318
ARG DEBIAN_FRONTEND=noninteractive 

RUN dpkg-reconfigure -plow unattended-upgrades
