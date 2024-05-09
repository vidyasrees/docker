exit
docker container ls
docker ps -a
docker system prune -af
docker rm -f $(docker ps -aq)
docker ps -a
docker container ls
docker ps -a
docker run --name myjenkins -d -p 5050:8080 jenkins/jenkins
docker run --name qaserver -d -p 6060:8080 --link myjenkins:jenkins tomee
docker container ls
docker run --name prodserver -d -p 7070:8080 --link myjenkins:jenkins tomee
docker container ls
docker rm -f $(docker ps -aq)
docker system prune -af
docker run --name mydb -d -e MYSQL_ROOT_PASSWORD=vidya msql
docker run --name mydb -d -e MYSQL_ROOT_PASSWORD=vidya mysql
docker container ls
docker run --name apache -d -p 8888:80 --link mydb:mysql httpd
docker run --name php -d --link mydb:mysql -- link apache:httpd php:7.2-apache
docker run --name php -d --link mydb:mysql --link apache:httpd php:7.2-apache
docker rm -f $(docker ps -aq)
docker system prune -af
docker run --name mydb -d -e POSTGRES_PASSWORD=vidya -e POSTGRES_USER=myuser -e POSTGRES_DB=mydb postgres
docker run --name myadminer -d -p 9090:8080 --link mydb:postgres adminer
docker container ls
docker rm -f $(docker ps -aq)
docker system prune -af
docker container ls
docker images
clear
docker run --name hub -d -p 4444:4444 selenium/hub
docker container ls
docker run --name chrome -d -p 5901:5900 -- link hub:selenium selenium/node-chrome-debug
docker run --name chrome -d -p 5901:5900 --link hub:selenium selenium/node-chrome-debug
docker run --name firefox -d -p 4442:4444 --link hub:selenium selenium/node-firefox
docker container ls
docker ps -a
docker rm -f firefox
docker ps -a
docker run --name firefox -d -p 4446:4444 --link hub:selenium selenium/node-firefox
docker container ls
docker ps -a
docker rm -f firefox
docker run --name firefox -d -p 4446:4444 --link hub:selenium selenium/node-firefox-debug
docker container ls
docker rm -f $(docker ps -aq)
docker system prune -af
docker run --name hub -d -p 4444:4444 selenium/hub
docker run --name chrome -d -p 4445:4444 --link hub:selenium selenium/node-chrome
docker run --name firefox -d -p 4446:4444 --link hub:selenium selenium/node-firefox
docker container ls
docker ps -a
docker container ls
docker ps -a
docker rm -f $(docker ps -aq)
docker system  prune -af
docker run --name chrome -d -p 4444:4444 selenium/hub
docker container ls
docker run --name chrome -d -p 5901:5900 --link hub:selenium selenium/node-chrome
docker container ls
docker ps -a
docker run --name firefox -d -p 5902:5900 --link hub:selenium selenium/node-firefox
docker container ls
docker ps -a
