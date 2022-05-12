# OnlineShop - Datenbanken Projekt

## Prerequisites
Have python, pipenv and docker installed on your system.
If you do not have pipenv installed you can do so by running
```
pip install pipenv
```
Although this project uses a postgres database, postgres is not required to be installed. The database is setup in a docker container.

## How to install
Go into your terminal and **switch to the directory where you have this project stored**.
For example:
```
cd Users/Frederik/OnlineShop
```
### Run the following commands:
1. Create the database server
```
docker-compose up
```
2. Create a virtual python environment and install the packages from the Pipfile
```
pipenv install
```
3. Run the virtual environment
```
pipenv shell
```
4. You are now running your commands inside the virtual environment.
   Go to the directory where the manage.py file ist stored
```
cd src
```
5. Run the Django webserver
```
python manage.py runserver
```
The webserver for Django is now running.

Click on the given http link with CTRL+Click and the website should open in your browser.

## How to uninstall
Run the following commands in the root folder of this project:
1. Delete the database server
```
docker-compose down
```
2. Remove the virtual environment
```
pipenv --rm
```

## Database Diagram
https://dbdiagram.io/d/62610fed1072ae0b6ac1b018
<img width="1238" alt="image" src="https://user-images.githubusercontent.com/83597198/168022651-c83c92cc-e71f-4e1d-bfed-ef7a94ede252.png">
