docker rm $(docker ps -qa)
docker network prune
chmod -R +rw ./dbdata
docker-compose up --build