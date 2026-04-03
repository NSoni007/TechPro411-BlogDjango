#!/bin/bash
apt-get update -y

# Install Git
apt-get install git -y

# Install Python 3.8 (compatible with Django 3.1)
apt-get install -y python3.8 python3.8-dev python3.8-distutils

# Install MySQL + Pillow dependencies
apt-get install -y default-libmysqlclient-dev
apt-get install -y libjpeg-dev zlib1g-dev -qq

# Install pip for Python 3.8
apt-get install -y python3-pip
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.8

# Go to home
cd /home/ubuntu/

# Clone your repo (CHANGE THIS)
#git clone https://github.com/xxxxxxxxxxxxx/xxxxxxxxxxxxxxx.git
### UPDATED ###
git clone https://github.com/NSoni007/TechPro411-BlogDjango.git

# Enter project folder (CHANGE THIS)
# cd /home/ubuntu/xxxxxxxxxxxxxx/BlogDjango
### UPDATED ###
cd /home/ubuntu/TechPro411-BlogDjango/BlogDjango

# Install requirements using pip3.8
python3.8 -m pip install --upgrade pip
python3.8 -m pip install --break-system-packages -r requirements.txt

# Go to Django src folder (CHANGE THIS)
# cd /home/ubuntu/xxxxxxxxxxxxxxxxx/BlogDjango/src
### UPDATED ###
cd /home/ubuntu/TechPro411-BlogDjango/BlogDjango/src

# Run Django commands
python3.8 manage.py collectstatic --noinput
python3.8 manage.py makemigrations
python3.8 manage.py migrate

# Run Django development server
python3.8 manage.py runserver 0.0.0.0:80
