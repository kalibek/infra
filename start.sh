#!/bin/bash

# create data dir for all images
mkdir -p data

#if selinux is present
chcon -Rt svirt_sandbox_file_t data

mkdir -p data/postgres
mkdir -p data/jenkins
mkdir -p data/gitea
mkdir -p data/minio/data
mkdir -p data/minio/config

docker-compose up