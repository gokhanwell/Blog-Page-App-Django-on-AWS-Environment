#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
# TOKEN="XXXXXXXXXXXXXXXXXXXXXXXXXX"
#git clone https://$TOKEN@github.com/gokhanwell/Blog-Page-App-Django-on-AWS-Environment
git clone https://github.com/gokhanwell/Blog-Page-App-Django-on-AWS-Environment
cd /home/ubuntu/Blog-Page-App-Django-on-AWS-Environment
apt install python3-pip -y
add-apt-repository ppa:deadsnakes/ppa -y
apt-get update -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Blog-Page-App-Django-on-AWS-Environment/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
