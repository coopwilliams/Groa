#!/bin/bash

#Configure EC2 instance and begin web Scraping


sudo su
echo "Moved into root"

yum update -y
echo "Package manager updated"

yum install git -y
echo "Git installed"

yum -y install python-pip
echo "Python installed"

python -V
echo "Current version of python"

yum install python3 python3-pip -y
echo "Python3 installed"

sudo rm /usr/bin/python
echo "Old version of python removed"

sudo ln -s /usr/bin/python3.7 /usr/bin/python
echo "Put python 3.7 into proper bin"

python -V
echo "Python version called properly now"

git clone https://github.com/Lambda-School-Labs/Groa.git
echo "Repo cloned into server"

cd Groa/web_scraping
echo "Moving into repo folder.."

pip install pipenv
echo "Pipenv installed.."

pipenv install --python /usr/bin/python
echo "Python installed in pipenv"

pipenv shell
echo "Shell env created"

pipenv sync
echo "Dependencies installed via piplock file"

pip3 install psycopg2-binary
echo "Binary version of psycopg2 installed manually"
