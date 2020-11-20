#!/bin/bash

sudo docker-compose -f go.yaml stop
sudo docker-compose -f go.yaml up -d mysql
sudo docker-compose -f go.yaml exec mysql chown mysql:mysql /mysql-log
sudo docker-compose -f go.yaml up -d --build
# sudo docker-compose -f go.yaml logs -f
