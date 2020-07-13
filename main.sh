#!/bin/sh
# Script for automatic setup Kafka server
#
# DO NOT RUN THIS SCRIPT ON YOUR PC OR MAC!
#
# The latest version of this script is available at:
# https://github.com/moorjani-ajay/tiny-kafka
#
sudo apt-get install openjdk-8-jdk -y

# Deleting existing and creating new directory 

# rm -rf tiny_kafka_downloads
# sudo mkdir tiny_kafka_downloads
# cd tiny_kafka_downloads

# Downloading kafka

wget http://apache.communilink.net/kafka/2.5.0/kafka_2.12-2.5.0.tgz

# untar
tar -zxvf kafka_2.12-2.5.0.tgz
# Exporting kafka path
export PATH=/home/ubuntu/kafka_2.12-2.5.0/bin:$PATH
export KAFKA_HEAP_OPTS=-Xms32M
export ZK_CLIENT_HEAP=128, ZK_SERVER_HEAP=128

sudo cp tiny-kafka/zookeeper-server-start.sh kafka_2.12-2.5.0/bin/zookeeper-server-start.sh
sudo nohup sh kafka_2.12-2.5.0/bin/zookeeper-server-start.sh kafka_2.12-2.5.0/config/zookeeper.properties

# sudo sh zookeeper-server-start.sh config/zookeeper.properties