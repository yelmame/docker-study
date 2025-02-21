
# Docker storage 

Containers are ephemeral, which leads to loss of data such as log files when they stop.




# Documentation

Docker provides multiple storage drivers and options, allowing you to manage persistent and ephemeral data efficiently
 # 1. Types of Docker Storage
## 2. Ephemeral Storage (Non-Persistent)

     Storage that exists only as long as the container is running.
     When the container stops or is deleted, the data is lost.
      Includes:
       1. Writable Layer (Container Layer)
        - Each container has its own writable layer on top of     
          the underlying image. Any changes made inside the
          container (e.g., file edits, package installations)      
          remain in this layer. However, this layer is:
           -- Tied to the container's lifecycle (deleted when the  
              container is removed).
           -- Inefficient for performance because it increases 
              storage overhead.
       2. tmpfs mounts
        - A temporary filesystem stored in RAM.
        - useful for storing non-persistent data like cache, 
          session data, or secrets.
        - faster than disk storage but loses data when the 
          container stops.
        Example of running a container with a tmpfs mount:
        
`
docker run --tmpfs /app/cache busybox
`



## 3. Persistent Storage

 Used to store data beyond the lifecycle of a container.
 Persistent storage ensures that data is retained even if a     
 container is stopped, removed, or recreated.
 
 Includes:
###   a. Volumes
- Managed by Docker and stored in /var/lib/docker/volumes/
- Best suited for persistent data shared across containers.
- Optimized for performance and security.
- Preferred over bind mounts because they work with different   
  storage drivers.
#### Creating and Using a Docker Volume

  ##### Create a volume
  `docker volume create myvolume `
  ##### Run a container using the volume
   `
docker run -d --name mycontainer -v myvolume:/data busybox `

  #### Checking Volumes
  ` docker volume ls  # List all volumes` 

  `docker volume inspect myvolume  # Inspect volume details 
  `
  #### Removing a Volume
  ` docker volume rm myvolume `

###   b. Bind Mounts
  - Maps a host directory to a container.
  - More flexible but less secure than volumes.
  - Changes in the host directory reflect inside the container in
    real-time
  #### Using Bind Mounts
   `
   docker run -d -v /home/user/data:/app/data busybox
   `

###   c. Storage Drivers
  Storage drivers handle how container filesystems interact with   
  the host OS. Popular drivers include:
   Driver	Best for	Notes
  overlay2 (default)	Most Linux distros	Faster and efficient
  aufs	Older Linux distros	Deprecated in modern Docker
  devicemapper	RHEL, CentOS	Block-based storage, not ideal 
  for  performance
  zfs	Advanced Linux users	Snapshots and high scalability
  windowsfilter	Windows containers	Required for Windows Server


## 4. Backing Up and Restoring Data
  ### Backing Up a Volume
`
    docker run --rm -v myvolume:/data -v $(pwd):/backup busybox tar -czf /backup/backup.tar.gz -C /data .
`
  ### Restoring from a Backup
`
docker run --rm -v myvolume:/data -v $(pwd):/backup busybox tar -xzf /backup/backup.tar.gz -C /data
`
## 5. Cleaning Up Unused Storage
To free up space, remove unused images, containers, and volumes.

`
  ### Remove all stopped containers
docker container prune
# Remove unused images
docker image prune

# Remove all unused volumes
docker volume prune
`
## 6. Best Practices for Docker Storage

  1. Use Volumes for Persistent Data – Volumes are more secure and optimized than bind mounts.
  2. Limit Write Operations in the Container Layer – Avoid excessive writing to the writable layer for better performance.
  3. Regularly Clean Up Unused Data – Run docker system prune to remove unused containers, images, and volumes.
  4. Monitor Disk Usage – Use docker system df to check storage consumption.
  5. Use Storage Drivers Wisely – Choose a driver that suits your OS and performance needs.







