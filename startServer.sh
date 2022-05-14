#! /bin/bash

docker-compose up & 

pipenv install
cd src
pipenv run python manage.py runserver --noreload

read varname # dont close the terminal