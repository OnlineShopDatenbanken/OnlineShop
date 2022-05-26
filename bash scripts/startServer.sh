#! /bin/bash

cd ..
cd src || return

pipenv run python manage.py runserver --noreload

read varname # dont close the terminal