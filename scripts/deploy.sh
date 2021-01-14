#!/bin/bash
cd K8s/
sudo kubectl apply -f ./backend/backend.yaml
sudo kubectl apply -f ./database/database.yaml
sudo kubectl apply -f ./database/databasepersistent.yaml
sudo kubectl apply -f ./front-end/front-end.yaml --force=true
sudo kubectl apply -f ./nginx/nginx.yaml