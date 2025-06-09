# Creating Container

## How to Create Container from Images

### Daemon-Based Images

```bash
# Runs in foreground
docker run httpd

# Runs in detached mode
docker run -d httpd
```

### OS-Based Images

```bash
# Pull Ubuntu image
docker pull ubuntu

# Run Ubuntu container (will run bash & exit)
docker run ubuntu

# Interactive terminal mode
docker run -it centos

# Now inside the container
# Exit the container
exit

# Run CentOS in interactive + detached mode
docker run -itd centos

# Remove a container by name
docker rm <container_name>

# Force remove a container
docker rm -f <container_name>

# Remove all stopped containers
docker container prune -f

# Remove an image
docker rmi <image_name>
```
