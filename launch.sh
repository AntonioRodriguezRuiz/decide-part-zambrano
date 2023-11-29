#!/bin/sh

python -m pip install -r requirements.txt

cd decide/

cp render_settings.py local_settings.py
./manage.py createsuperuser --noinput
./manage.py collectstatic --noinput
./manage.py makemigrations
./manage.py migrate

gunicorn -w 5 decide.wsgi:application --timeout=500
