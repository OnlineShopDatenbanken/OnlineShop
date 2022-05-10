# OnlineShop - Datenbanken Projekt

## Prerequisites
Have python and docker installed on your system.

## How to install
Go into your terminal and **switch to the directory where you have this project stored**.
For example:
```
cd Users/Frederik/OnlineShop
```
Then Switch to the src directory:
```
cd src
```
Then run the following command:

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
4. Go to the directory where the manage.py file ist stored
```
cd src
```
5. Run the Django webserver
```
python manage.py runserver
```
The webserver for Django is now running.

Click on the given http link with CTRL+Click and the website should open in your browser.

## Database Diagram
https://dbdiagram.io/d/62610fed1072ae0b6ac1b018
