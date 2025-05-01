docker storage


docker 
1-BInd Mounts 
2-volumes
storage driver- select filesystem depending on os to staore data 
 1-overlay2 - mostly for ubuntu,centos, fedora, other Linux also 
 2-aufs,devicemapper- deprecated(not used)
 3-zfs,vfs-

1- bind mounts
   allows to bind dir inside your container to host dir 
   - if container goes down then you have dire on host which           	can be bind to new container
   - its restricted to host dire from host will be bind to container

2- volume 
   - has lifecycle i.e you can create destroy
   - you can use docker cli like docker volume ls 
   -  you can pute external storage 


example:
1st method 
 docker volume 
   # dokcer volume ls
   # docker volume create vol1
   # docker volume inspect vol1 
   # cd /var/lib/docker
     cd volume 
   # docker volume rm vol1
   # docker volume rm vol1 vol2
   # docker run -d --name com2 -v vol2:/app -p 8080:80  nginx
   # docker rm -f com2       (remove the con)
   # docker run -d --name com1 -v vol2:/app -p 8080:80 nginx
 2nd method
   same method syntax different
   
   # docker run -d --name com1 --mount source=vol1,target=/app nginx 


1- mount
-v(volume)  hostmachine_location:container_location 
/website:/usr/local/pache/htdocs/

