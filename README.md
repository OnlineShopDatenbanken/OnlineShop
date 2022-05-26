# OnlineShop - Datenbanken Projekt


## Prerequisites
Have python (at least version 3.8), pipenv and docker installed on your system.
If you do not have pipenv installed you can do so by running
```
pip install pipenv
```
Although this project uses a postgres database, postgres is not required to be installed. The database is setup in a docker container.

## How to Install
This is how to use automatic installation using bash scripts. At the end of this readme there also is a manual instruction in case you run into errors.

Open the root directory of this project in your terminal. Then type the following commands:
```
cd "bash scripts"
```
```
install.sh
```
Wait until the installation is finished. If on your operating system a new bash window is automatically opened that runs the commands, the installation is finished once it disappears again.

## How to Run
```
cd "bash scripts"
```
```
startServer.sh
```
There is no console output confirming that the webserver was created. Do not close the terminal window. Just wait a few seconds and then open ```http://127.0.0.1:8000/``` in your browser. You should now see the home screen of the website.

## How to Uninstall
The database and the virtual environment including its installed python packages will be completely removed from your system.
```
cd "bash scripts"
```
```
uninstall.sh
```

## Component Diagram
![Untitled Diagram drawio](https://user-images.githubusercontent.com/83597198/168484060-2b41725b-d3ac-449f-9c9c-0bb57e2e51b6.png)

## Database Diagram
https://dbdiagram.io/d/62610fed1072ae0b6ac1b018
<img width="1238" alt="image" src="https://user-images.githubusercontent.com/83597198/168022651-c83c92cc-e71f-4e1d-bfed-ef7a94ede252.png">

## Manual Install and Run
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

## Manual Uninstall
Run the following commands in the root folder of this project:
1. Delete the database server
```
docker-compose down
```
2. Remove the virtual environment
```
pipenv --rm
```
