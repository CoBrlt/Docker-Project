


sh remove.sh

docker rmi cobrlt/frontend:1.0.0
docker rmi cobrlt/backend:1.0.0
# docker rmi co/frontend:1.0.0
# docker rmi co/backend:1.0.0
#docker rmi mysql:latest

sh build_images.sh

docker run --name mysql-container -v mysqlvol_docker:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 3306:3306 -d mysql:latest


docker network create --driver bridge project_network
docker network connect project_network mysql-container

docker run -e SPRING_PROFILES_ACTIVE=docker -d --network project_network --name backend -p 8080:8080 cobrlt/backend:1.0.0

sleep 10s


docker run -d --network project_network --name frontend -p 80:80 cobrlt/frontend:1.0.0


echo "end"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' backend
