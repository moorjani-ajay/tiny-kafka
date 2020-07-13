#!/bin/sh
# Script for automatic setup Kafka server
#
# DO NOT RUN THIS SCRIPT ON YOUR PC OR MAC!
#
# The latest version of this script is available at:
# https://github.com/moorjani-ajay/tiny-kafka
#
sudo apt-get install openjdk-8-jdk

# Creating directory
sudo mkdir downloads
cd downloads
# Downloading kafka
wget http://apache.communilink.net/kafka/2.5.0/kafka_2.12-2.5.0.tgz

# untar
tar -zxvf kafka_2.12-2.5.0.tgz