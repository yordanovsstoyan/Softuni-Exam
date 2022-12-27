#!/bin/bash

echo *Add docker repo*
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf install -y docker-ce docker-ce-cli containerd.io

echo *Enable and Start Docker*
systemctl enable --now docker

echo *Add vagrant to docker group*
usermod -aG docker vagrant