#!/bin/bash
apt update -y
apt install -y nginx

systemctl start nginx
systemctl enable nginx

TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" ^
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

INSTANCE_ID=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" ^
  http://169.254.169.254/latest/meta-data/instance-id)

HOSTNAME=$(hostname)

echo "<h1>AWS Auto Scaling Demo (Ubuntu)</h1>
<p>Instance ID: $INSTANCE_ID</p>
<p>Hostname: $HOSTNAME</p>" > /var/www/html/index.html
