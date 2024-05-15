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
vim docker-compose.yml
docker compose up -d
vim docker-compose.yml
docker compose up -d
vim docker-compose.yml
docker compose up -d
git init
git status
git add .
git status
git commit -m "a"
git push
git remote add origin https://github.com/vidyasrees/docker.git
git push -u origin master
docker compose stop
dcoker compose down
docker compose down
docker ps -a
ls
vim docker-compose1.yml
docker system prune -af
docker compose up -d
docker container ls
docker compose1 up -d

docker compose1 up -d
docker compose up -d
docker system prune -af
docker container ls
docker images
docker compose down
docker container ls
docker images
docker system prune -af
docker images
docke container ls
docker container ls
vim docker-compose1.yml
docker compose up -d
docker compose down
docker system prune -af
vim docker-compose1.yml
docker composer1 up -d
docker compose1 up -d
docker compose 1 up -d
ls
docker-compose1.yml up -d 
docker-compose -f docker-compose1.yml up -d
docker compose1 up -d
ls
docker-compose  docker-compose1.yml up -d
docker-compose docker-compose1.yml up -d
rm -rf docker-compose.yml
ls
docker compose up -d
vim docker-compose1.yml
docker compose up -d
docker compose1 up -d
ls
docker compose up
docker compose1 up
docker --help
ls
docker-compose -f docker-compose1.yml up -d
docker --version
docker-compose --versionn
docker-compose --version
docker-compose -f docker-compose1.yml
docker-compose -f docker-compose1.yml up -d
docker compose up -d
pwd
ls
pwd
docker compose -f /root/docker-compose1.yml up -d
docker container ls
docker compose down
docker compose1 down
git status
git add .
git commit -m "a"
git push
docker compose -f /root/docker-compose1.yml down
docker container ls
docker system prune -af
vim docker-compose.yml
docker compose up -d
git status
git add
git init
git add .
git commit -m "b"
git push
ls
vim docker-compose2.yml
docker compose up -d
docker-compose -f /root/docker-compose2.yml up -d
ls
docker-compose -f /root/docker-compose2.yml up -d
pwd
docker-compose -f /root/docker-compose2.yml up -d
docker --version
docker-compose -f /root/to/docker-compose2.yml up -d
ls
docker-compose -f /root/docker-compose2.yml up -d
docker-compose -f /root/to/docker-compose2.yml up
docker-compose -f docker-compose2.yml up -d
rm -rf docker-compose.yml
ls
vim docker-compose2.yml
docker-compose -f /root/docker-compose2.yml up -d
ls
pwd
ls
vim docker-compose2.yml
docker-compose -f docker-compose2.yml up -d
pwd
docker-compose -f dockercompose2.yml
docker-compose -f /root/docker-compose2.yml up -d
docker-compose -f /root/to/docker-compose2.yml up -d
ls
docker rm -f $(docker ps -aq)
docker system prune -af
ls
rm -rf docker-compose1.yml
rm -rf docker-compose2.yml
ls
vim docker-compose.yml
docker compose up -d 
docker container ls
docker compose down
docker rm -f (docker ps -aq)
docker rm -f $(docker ps -aq)
docker system prune -af
ls
rm -rf docker compose.yml
ls
rm -rf docker-compose.yml
clear
vim docker-compose-app.yml
docker-compose -f docker-compose-app up -d
docker-compose-app up -d
docker compose up -d
mv docker-compose-app.yml docker-compose.yml
ls
docker compose up -d
docker compose app up -d
ls
rm -rf docker-compose.yml
ls
vim docker-compose.yml
docker compose up -d
docker compose down
pwd
mv docker-compose.yml /tmp
cd /tmp
ls
docker compose up -d
docker container ls
docker compose down
vim docker-compose.yml
docker compoe up -d
docker compose up -d
docker container ls
ls
mv docker-compose.yml abc.yml
ls
docker compose -f abc.yml up -d
git status
git init
git status
git add .
git commit -m "c"
git push
git remote add origin https://github.com/vidyasrees/docker.git
git push -u origin master
git pull
git push
git clone https://github.com/vidyasrees/docker.git
git init
git add .
git status
ls
git init
git status
git clone https://github.com/vidyasrees/docker.git
ls
git init
git stadtus
git status
git add .
mkdir /data
ls
docker run --name u1 -it -v /data ubuntu
docker inspect u1
docker rm -f u1
cd /var/lib/docker/volumes/c9c2673621cc749e24d5987f51c83ea223af427d246c5c0320f469a68901b528/_data
cd
ls
cd /var/lib/docker/volumes/c9c2673621cc749e24d5987f51c83ea223af427d246c5c0320f469a68901b528/_data
ls
cd
docker run --name c1 -it -v /data centos
ls
docker ps -a
docker rm -f $(docker ps -aq)
docker ps -a
dockr system prune -af
docker system prune -af
docker volume ls
docker volume prune 
ls
docker run --name c1 -it -v /data centos
docker run --name c2 -it --volumes-from c1 centos
docker run --name c3 -it --volumes-from c2 centos
docker attach c1
docker rm -f c1 c2 c3
docker colume prune -af
docker volume prune -af
docker volume create myvolume
docker volume ls
docker volume inspect myvolume
cd /var/lib/docker/volumes/myvolume/_data
ls
touch file1
ls
cd
docker ru --name u1 -it -v myvolume:/tmp ubuntu
docker run --name u1 -it -v myvolume:/tmp ubuntu
docker rm -f u1
docker volume inspect myvolume
cd /var/lib/docker/volumes/myvolume/_data
ls
dcoker volume prune -af
docker volume prune -af
docker system prune -af
docker container ls
docker ps -a
docker run --name u1 -it ubuntu
docker rm -f u1
docker run --name u1 -it ubuntu
docker commit u1 myubuntu
docker images
docker rm -f u1
docker run --name u1 -it myubuntu
vim dockerfile
docker build -t mynginx .
docker images
vim dockerfile
docker system prune -af
ls
docker container ls
docker ps -a
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu
docker images
git --version
ls -l
ls
rm -rf dockerfile
ls
docker --version
vim dockerfile
docker build -t myubuntu .
dcoker images
docker images
vim dockerfile
docker build -t myubuntu .
docker build --no-cache -t myubuntu .
docker build -t myubuntu .
docker images
vim script.sh
sh script.sh
ls
vim dockerfile
docker build -t myubuntu .
docker images
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu 
docker container ls
docker ps -a
dcoker rm -f u1
docker rm -f u1
docker run --name u1 -it myubuntu 
docker rm -f u1
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu
docker rm -f u1
docker ps -a
docker images
docker system prune -af
docker container ls
docker run --name u1 -it ubutnu
docker run --name u1 -it ubuntu
docker rm -f u1
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu
docker rm -f u1
docker system prune -af
docker volume prune -af
ls
docker volume ls
docker run --name n1 -d -P nginx
docker run --name t1 -d -P tomcat
docker run --name h1 -d -P httpd
docker volume ls
docker run --name my -d -e MYSQL_ROOT_PASSWORD=vidya mysql
docker volume ls
docker rm -f $(docker ps -aq)
vim dockerfile
docker build -t mycentos .
docker run --name c1 -it mycentos
docker inspect c1
docker rm -f c1
cd /var/lib/docker/volumes/4ce4f051f9019d49c048fd765f9403a1c8146721f5dfbf8c57d9fe7fc7704a71/_data
ls
cd
docker system prune -af
docker volume ls
docker run --name j1 -d -p jenkins/jenkinns
docker run --name j1 -d -P jenkins/jenkinns
docker run --name j1 -d -P jenkins/jenkins
docker images
docker container ls
docker exec -it j1 bash
vim dockerfile
docker build -t myjenkins .
docker run --name j2 -d -P myjenkins
LS
ls
docker container ls
docker exec -it j2 bash
docker container ls
dcoker rm -f #(docker ps -aq)
docker rm -f #(docker ps -aq)
docker system prune -af
ls
docker volume ls
docker volume prune -af
docker system prune -af
docker container ls
docker ps -a
vim dockerfile
docker build -t mynginx .
docker images
docker run --name n1 -d -P mynginx
docker container ls
docker rm -f n1
docker system prune -af
docker ps -a
docker run --name u1 -it ubuntu
docker run --name t1 -it -P tomee
docker rm -f t1
docker run --name t1 -it -P -d tomee
docker exec -it t1 bash
docker container ls
docker run --name h1 -d -P httpd 
docker run --name n1 -d -P nginx 
docker run --name c1 -it centos
docker conteiner ls
docker container ls
docker attach u1
docker container ls
docker ps -a
docker exec -it t1 bash
docker container ls
docker rm -f $(docker ps -aq)
docker system prune -af
docker ps -a
docker volume ls
docker volume prune -af
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu 
docker container ls
docker rm -f u1
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu
docker container ls
vim dockerfile
docker rm -f u1
docker system prune -af
docker volume ls
sudo su - jenkins
docker rm -f u1
docker images
dockre container ls
docker container ls
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name u1 -it myubuntu
docker container ls
docker rm -f u1
vim dockerfile
docker build -t myubuntu .
docker images
docker build --no-cache -t myubuntu .
docker ps -a
docker run --name u1 -it myubuntu
docker r -f u1
docker rm -f u1
docker run --name u1 -d -P myubuntu
docker container ls
docker rm -f u1
docke system prune -af
docker system prune -af
docker volume ls
vim dockerfile
docker build -t myubuntu .
docker images
docker run --name n1 -d -P myubuntu
docker container ls
docker run --name n2 -d -it -P myubuntu bash
docker container ls
docker run --name n3 -d -it -P myubuntu ls -la
docker container ls
docker ps -a
docker rm -f n1 n2 n3
docker container ls
vim dockerfile
docker run --name u1 -it -d -P myubntu bash
docker run --name u1 -it -d -P myubuntu bash
vim dockerfile
docker run --name u1 -it -d -P myubuntu bash
docker rm -f u1
docker run --name u1 -it -d -P myubuntu bash
docker ps -a
docker rm -f u1
docker system prune -af
docker volume ls
docker network ls
docker network create --driver bridge vidya
docker network create vidya2
docker network ls
docker run --name c1 -it --network vidya1 busybox
docker run --name c1 -it --network vidya busybox
docker rm -f c1
docker run --name c1 -it --network vidya busybox
docker inspect c
docker inspect c1
docker run --name c2 -it --network vidya2 busybox
docker container ls
docker inspect c2
docker run --name c3 -it --network vidya2 busybox
docker network connect vidya c2
docker attach c1
docker attach c3
docker rm -f c1 c2 c3
docker system prune -af
docker ps -a
docker network create --driver bridge --subnet 10.0.0.0/28 vidya
docker network ls
docker run --name n1 -d -P --network vidya nginx
docker container ls
docker inspect n1
docker container ls
docker rm -f n1
docker system prune -af
ls
rm -rf dockerfile
vim docker-compose.yml
docker rm -f $(docker ps -aq)
docker network ls
docker compose up -d
docker network ls
docker container ls
docker inspect b321fdb717a1
pwd
docker compose down
mv docker-compose.yml /tmp
cd /tmp
ls
docker compose up -d 
docker network ls
docker compose down
docker network ls
ls
docker network create --driver bridge --subnet 10.0.0.0/27 vidya
ls

vim docker-compose.yml
pwd
docker compose up -d
pwd
vim docker-compose.yml
docker compose up -d 
vim docker-compose.yml
docker compose up -d 
docker network ls
vim docker compose down
docker compose down
vim dockerfile
vim docker-compose.yml
docker compose up -d
docker network ls
docker container ls
docker inspect 14d7b3472d2a 
docker container ls
docker compose down
docker network ls
vim docker-compose.yml
docker system prune -af
docker compose up -d
docker container ls
docker network ls
docker inspect 2cdbcf608319
docker compose down
docker system prune -af
vim docker-compose.yml
docker system prune -af
docker volume prune -af
docker volume ls
docker compose up -d
vim docker-compose.yml
docker compose up -d
docker volume ls
docker compose down
docker volume ls
vim dockerfile
docker build -t myjenkins .
docker images
vim docker-compose.yml
docker compose up -d
docker container ls
docker exec -it 18c8be17fd3f 
docker exec -it 18c8be17fd3f bash
docker compose down
docker system prune -af
docker images
ls
docker volume ls
docker volume prune -af
ls
vim docker-compose.yml
docker-compose up -d
docker compose up -d
docker images
docker container ls
docker ps -a
vim docker-compose.yml
docker login
docker build -t sreesv/myjenkins .
docker images
docker push sreesv/myjenkins
docker build -t sreesv/jenkins11 .
docker build images
docker images
dcoker push sreesv/jenkins11
docker push sreesv/jenkins11
docker --version
vim /etc/hostname
init 6
docker swarm init
docker node ls
docker service create --name webserver -p 8888:80 --replicas 5 nginx
docker service ls
docker service ps webserver
docker service rm webserver
docker container ls
docker images
docker system prune -af
docker ps -a
docker service create --name mydb -e MYSQL_ROOT_PASSWORD=vidya --replicas=3 mysql
docker service ls
docker service ps mydb
docker service rm mydb
docker images
docker rm mysql
rm -rf mysql
docker images
docker rm -f mysql
rm -rf mysql
docker images
docker rmi mysql
docker rm mysql
docker rmi mydb
ls
rm -rf docker-compose.yml
rm -rf dockerfile
ls
docker rm -f mysql
docker rmi e9387c13ed83
ls
docker images
docker node ls
docker service ls
docker service create --name appserver -p 9090:8080 --replicas 3 tomcat
docker service ls
docker ps appserver
docker service ps appserver
docker service scale appserver=8
docker service ls
docker service ps appserver
docker service scale appserver=2
docker serivce ps appserver
docker service ps appserver
docker service rm appserver
docker service create --name myredis --replicas 4 redis:3
docker service ls
docker service ps myredis
docker service update --image redis:4 myredis
docker service ls
docker service ps myredis
docker service ps myredis | grep \_
docker service ps myredis | grep -v\_
docker service ps myredis | grep -v \_
docker service update --rollback myredis
docker service ls
docker service rm myredis
docker node update --availability drain worker1
docker node update --availability drain Worker1
docker node ls
docker node update --avaialbility active Worker1
docker node update --availability active Worker1
docker node ls
docker node rm worker2
docker node rm Worker2
docker node ls
docker swarm join--token Worker
docker swarm join-token Worker
docker swarm join-token worker
docker node ls
docker service ls
docker system prune -af
docker volume ls
docker volume prune -af
docker images
docker container ls
docker node ls
docker service create --name webserver -p 8888:80 --replicas 6 httpd
docker service ps webserver
docker container ls
docker service ls
docker rm -f e790657c5ea7
docker service ls
docker service ps webserver
docker node update --availability drain Worker1
docker service ls
docker service ps webserver
docker service ps webserver | grep -v \_
docker node update --availability active Worker1
docker service ls
docker service ps webserver
docker service ls
docker node ls
docker service ps webserver | grep -v \_
docker service ls
docker service ps webserver
docker service ls
docker node rm Worker2
docker swarm join-token worker
docker service rm webserver
docker node ls
docker swarm join-token manager
docker node ls
docke swarm leave --force
docker service create --name webserver -p 8888:80 --replicas 8 nginx
docker service create --name webserver -p 8889:80 --replicas 8 nginx
docker service create --name appserver -p 8889:80 --replicas 8 nginx
docker service ps webserver
docker swarm leave --force
docker service ps webserver
docker service ls
docker swarm init
docker node ls
docker swarm join-token worker
docker node ls
docker swarm leave --force
docker node ls
docker swarm join-token worker
docker swarm init
docker node ls
docker service ls
docker volume ls
docker network ls
docker network create --driver overlay vidya1
docker network create --driver overlay vidya2
docker network ls
docker service create --name webserver -p 8888:80 --replicas 6 --network vidya1 httpd
docker network ls
docker service ls
docker service inspecet webserver
docker service inspect webserverr
docker service inspect webserver
docker service inspect webserver --pretty
docker service create --name appserver -p 9999:8080 --replicas 6 tomcat
docker service ls
docker service update --network-add vidya2 appserver
docker service inspect appserver --pretty
docker nodels
docker node ls
docker service create --name mynginx -p 8989:80 --replicas 5 nginx
docker service sls
docker service ls
docker service rm webserver appserver
docker service ls
docker service ps myng
docker service scale mynginx=1
docker service ls
docker service ps mynginx
vim stack1.yml
docker service rm mynginx
ls
docker stack deploy -c stack1.yml myapp
docker stack ps myapp
docker stack rm myapp
vim stack1.yml
docker stack deploy -c stack1.yml myapp
docker service ls
docker stack ps myapp
docker service ls
docker service scale myapp_mydb=3
docker service ls
git init
git clone https://github.com/vidyasrees/docker.git
git status
git add .
git commit -m "d"
git config --global user.email "vidhyasree898@gmail.com"
git commit -m "d"
git status
git add
git add .
git status
ls
git status
git clone
git clone https://github.com/vidyasrees/docker.git
git status
ls
mv stack1.yml docker
git status
ls
git status
git init
git add .
git commit -m "d"
git status
git push
docker ls
cd /docker/
cd docker/
ls
git add .
git ststus
git status
git commit -m "d"
git push
git pull
git push
