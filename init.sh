#!/bin/bash

# creating the network
docker network create --subnet 10.0.0.0/16 server-network

# verify creation
docker network ls

# run nginx webserver
docker pull nginx:latest
docker run -d --name webserver --hostname web.example.com --ip 10.0.0.5 --network server-network nginx:latest
