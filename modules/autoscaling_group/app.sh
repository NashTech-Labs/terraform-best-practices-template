#!/bin/bash

sudo yum install nginx -y
sudo service nginx start
echo '<html><head><title>Knoldus</title></head><body><h1>Running nginx application on AWS Using Terraform</h1></body></html>' | sudo tee /usr/share/nginx/html/index.html