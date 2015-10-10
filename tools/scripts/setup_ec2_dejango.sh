# initialize the environment
# http://www.nickpolet.com/blog/deploying-django-on-aws/1/

sudo apt-get update
sudo apt-get install apache2 libapache2-mod-wsgi
sudo apt-get install python-pip
sudo pip install django
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install python-psycopg2
