#! /bin/bash

cd ..
cd src || return

docker-compose up &
pipenv install