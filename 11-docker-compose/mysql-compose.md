my sql container compose file 
vi dockere-compose.yaml

*************
version: '3.8'

services:
  mysql:
    image: mysql:8.0
    container_name: mysql_db
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: mydb
      MYSQL_USER: user1
      MYSQL_PASSWORD: user1pass
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  mysql_data:

****************

docker compose up -d 

docker exec -it mysql_db bash

mysql -u root -p 
 