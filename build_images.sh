docker run --name mysql-container -v mysqlvol_docker:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 3306:3306 -d mysql:latest


docker network create --driver bridge project_network
docker network connect project_network mysql-container


echo "wait 5s"
sleep 5s

cd spring-boot-data-jpa-mysql-master/
mvn clean package
sleep 5s
mv target/spring-boot-data-jpa-0.0.1-SNAPSHOT.jar target/app.jar


docker build -t cobrlt/backend:1.0.0 .


cd ../angular-16-crud-example-master/
npm run build
sleep 5s

docker build  --no-cache -t cobrlt/frontend:1.0.0 .

docker stop mysql-container
docker rm mysql-container

docker login -u cobrlt -p corentincorentin

#docker push cobrlt/backend:1.0.0
docker push cobrlt/frontend:1.0.0