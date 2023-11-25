docker stop frontend
docker stop backend
docker stop mysql-container

docker rm frontend
docker rm backend
docker rm mysql-container

docker rmi cobrlt/frontend:1.0.0
docker rmi cobrlt/backend:1.0.0
#je ne supprime pas l'image mysql:latest



# docker stop docker_mysql-container_1
# docker stop docker_backend_1
# docker stop docker_frontend_1

# docker rm docker_mysql-container_1
# docker rm docker_backend_1
# docker rm docker_frontend_1

#docker network rm project_network
