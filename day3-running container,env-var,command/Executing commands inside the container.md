Executing commands inside the container

	docker exec -it <container-name>
        # docker exec -it com1 bash 
	# docker exec -it com1 pwd
	# docker exec -it com1 ls (ls of pwd)
        to find documentroot
         goto official document & then images doccument
	 
        inspect container 
         - workdir - enter the container default dir present 
        publish web page  into doccumnt root and 
    
  

run command from docker to container 
      # vim index.html     (local machine)
      # docker cp index.html con2:/
      # docker exec -it com2 bash
  copy file from container machine to local system
      #docker cp con2:/usr/local/apache2/htdocs/index.html /root/

diff command : to find difference between running container and the initial image 
docker exec -it con1(nginx container) bash
touch file{1..5}
-- docker diff <container_id>
A- added
c-- change 


Layered Architecture 

IMage is made up of layer 

Container are only a layer above the image 

    
   
 

      