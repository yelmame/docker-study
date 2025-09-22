Running Container & setting environmental variable 
# Pulling Image from Repository
    
     
docker pull Imagename




```bash
  docker pull centos
  docker pull httpd
  docker pull quay.io/centos/centos
  dcoker pull docker.io/mysql



```
To run Os-based Container with specific name 
```bash
  docker run -it --name com1 centos
  docker run -d --name webserver1 httpd
```

```bash
  docker pull centos
  docker pull httpd
```
To run Os-based Container 
```bash
  docker run -it --name com1 centos
  docker run -d --name webserver1 httpd
```
TO Set Environmental variable inside  Container

```bash
  dcoker run -itd --name <container-name> -e key=value <image-name> 
```
Examples:
```bash
  docker run -it --name com3 -e city=Ahmedabad -e class=docker centos
  docker run -it --name db1 -e MYSQL_ROOT_PASSWORD=admin
  
```
