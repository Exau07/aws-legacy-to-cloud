#!/bin/bash
# Script d'initialisation des instances EC2

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "<h1>Application Legacy migrée vers AWS</h1>" > /var/www/html/index.html
echo "<p>Instance: $(hostname)</p>" >> /var/www/html/index.html
