#!/usr/bin/env bash

yum update -y

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install docker nginx git jenkins -y

service docker start

usermod -a -G docker ec2-user
usermod -a -G docker jenkins

truncate -s 0 /etc/nginx/nginx.conf

echo "
worker_processes  1;

events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;
    keepalive_timeout  65;
    server {
        listen 80;
        server_name _;
        location / {
            proxy_pass http://127.0.0.1:8080;
        }
    }
}
" >> /etc/nginx/nginx.conf

service jenkins start
service nginx start

chkconfig jenkins on
chkconfig nginx on
