#! /bin/bash

cd ..
cd src || return
docker-compose down

cd ..
pipenv --rm