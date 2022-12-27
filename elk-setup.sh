#!/bin/bash

#Install elastic search

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.5.0-x86_64.rpm
sudo rpm -ivh elasticsearch-*.rpm

sudo systemctl daemon-reload
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch

#Install Logstash 
wget https://artifacts.elastic.co/downloads/logstash/logstash-8.5.0-x86_64.rpm
sudo rpm -ivh logstash-*.rpm

sudo systemctl daemon-reload
sudo systemctl enable logstash
sudo systemctl start logstash

#Install Kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-8.5.0-x86_64.rpm
sudo rpm -ivh kibana-*.rpm

sudo systemctl daemon-reload
sudo systemctl enable kibana    
sudo systemctl start kibana


#Config all elk tools manually  and beats

#Firewall
sudo firewall-cmd --add-port 5044/tcp --permanent
sudo firewall-cmd --add-port 5601/tcp --permanent
sudo firewall-cmd --add-port 9200/tcp --permanent
sudo firewall-cmd --reload