A Dockerfile to automatically build generatedata.com found at benkeen/generatedata. This docker container simplifies setup of an apache with the code used for generatedata.com. The image is based off of tutum/apache-php. It simply automatically pulls the code from benkeen/generatedata, puts it in the app directory, and then runs composer install. You will need to point to a mysql database during the setup in order to use it.

Simply pull the image
> docker pull lai475nathaniel/docker-generatedata

then start up the server by running

> docker run --name generatedata -p 80:80 lai475nathaniel/docker-generatedata

The server should then be running on the IP address of the machine running the service on port 80.

Additionally the fig file in the repository sets up both a php server with generate data and a mysql server with a schema by the name of "app" to be used by generatedata. Simply run 
> fig up 

and it will spin up both the php server and the mysql database in two different containers. On setup of generatedata, use "mysql" as the hostname of the mysql server, and "app" as the database name.
