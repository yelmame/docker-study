
# Docker Networking

Networking refers to how containers communicate with each other, the host machine, and external networks. Docker provides different networking options to facilitate secure and efficient communication.






## Documentation

## Types of Docker Networks
Docker offers several built-in networking modes:

### 1. Bridge Network (Default)
Containers on the same bridge network can communicate with each other.
Containers get their own internal IP but can also be reached using container names.

Example:
```
sh
docker network create my_bridge_network
docker run -d --name container1 --network my_bridge_network nginx
docker run -d --name container2 --network my_bridge_network alpine
```

Containers can ping each other using names: ping container1


### 2. Host Network

Removes network isolation between the container and the host.

The container shares the host’s networking stack (e.g., ports are not isolated).

Useful for performance-sensitive applications.

Example:
```
sh
docker run --rm --network host nginx
```
If nginx runs on port 80, it will be available directly on the host’s port 80.

### 3. None Network

The container has no network access.
Useful for security or testing isolated workloads.

Example:
```
sh
docker run --rm --network none alpine
````

### 4. Overlay Network (for Swarm Mode)

Enables communication between containers across multiple Docker hosts.

Used in Docker Swarm for distributed applications.

Example:
```
sh
docker network create -d overlay my_overlay_network
```

## Managing Docker Networks

### List Networks
```
sh
docker network ls
```
### Inspect a Network
```
sh
docker network inspect my_bridge_network
```

### Connect a Container to a Network
```
sh
docker network connect my_bridge_network container1
```
### Disconnect a Container
```
sh
docker network disconnect my_bridge_network container1
```
### Remove a Network
```
sh
docker network rm my_bridge_network
```
