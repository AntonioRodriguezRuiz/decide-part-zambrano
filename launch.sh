#!/bin/sh
cd decide/

python -m pip install -r requirements.txt

cp local_settings.deploy.py local_settings.py
./manage.py createsuperuser --noinput
./manage.py collectstatic --noinput
./manage.py makemigrations
./manage.py migrate

gunicorn -w 5 decide.wsgi:application --timeout=500
