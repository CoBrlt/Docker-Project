docker stop frontend
docker stop backend
docker stop mysql-container

docker stop docker_mysql-container_1
docker stop docker_backend_1
docker stop docker_frontend_1


docker rm frontend
docker rm backend
docker rm mysql-container

docker rm docker_mysql-container_1
docker rm docker_backend_1
docker rm docker_frontend_1

#docker network rm project_network
