# Docker Basic Commands

## General Docker Commands

```bash
docker info
docker version          # or docker --version
docker images
docker ps
docker inspect
docker search
```

---

## About Images

A **container image** = Base OS + One program + its libraries + Docker packaging

### Types of Container Images

1. **OS-Based Images**  
   Examples: `ubuntu`, `centos`, `rhel`

2. **Daemon-Based Images**  
   Examples: `httpd`, `nginx`, `mysql`

---

## Working with Images

```bash
# Pull an image
docker pull <image-name>

# Image naming convention
# imagename = registryname/username-or-namespace/imagename:tag

# Inspect image details
docker inspect <image-name>
```

---

## Registry Servers

- **Public Registry Servers**:  
  Examples: `docker.io`, `quay.io`

- **Private Registry Servers**:  
  Examples: `registry.redhat.com`

---

## Hands-On Examples

### 1. Pull and Inspect httpd Image

```bash
docker pull httpd
docker images
docker inspect httpd
```

Check `CMD` field: this is the command that runs when the container starts.

---

### 2. Pull and Inspect CentOS Image

```bash
docker pull centos
docker inspect centos
```

---

### 3. Error with `quay.io` (if pulling directly)

- Visit [hub.docker.com](https://hub.docker.com)
  - Search: `httpd`

- Visit [quay.io](https://quay.io)
  - Search: `httpd`
  - Find full image name

```bash
docker pull quay.io/centos/httpd-24-centos
docker images
```

---

## Creating Containers

### Daemon-Based Images

```bash
# Runs in foreground
docker run httpd

# Runs in detached mode
docker run -d httpd
```

### OS-Based Images

```bash
# Pull Ubuntu
docker pull ubuntu

# Run (will start bash and exit)
docker run ubuntu

# Interactive mode (bash)
docker run -it centos

# Exit container
exit

# Interactive + Detached mode
docker run -itd centos
```

---

## Removing Containers and Images

```bash
# Remove a container
docker rm <container_name>

# Force remove a container
docker rm -f <container_name>

# Remove all stopped containers
docker container prune -f

# Remove an image
docker rmi <image_name>
```
