docker networking 

Highlights
🚢 Understanding Docker Networking: The importance of networking in Docker containers for communication with each other and the host system.
🔒 Logical Isolation: The need for isolation between containers, especially when sensitive information is involved, and how networking can address this.
🔄 Default Bridge Networking: Explanation of Docker’s default bridge network and its role in container communication.
🔧 Creating Custom Networks: How to create and manage custom bridge networks for enhanced security and isolation.
⚙️ Practical Demonstration: A hands-on demonstration of creating and managing Docker networks, showcasing real-world applications.
🌐 Types of Docker Networking: Overview of different types of Docker networking, including bridge, host, and overlay networks.
❓ Future Content: Upcoming discussions on Docker interview questions to prepare viewers for practical applications in the job market.
Key Insights
💬 Container Communication: Docker networking is vital for container communication, allowing containers to interact with each other and the host. Understanding how containers communicate is essential for developing robust applications in a microservices architecture. The ability to enable or restrict communication between containers leads to the creation of more secure and efficient applications.

🔑 Importance of Isolation: Logical isolation between containers is paramount, particularly for applications handling sensitive data, such as finance or user information. By employing custom bridge networks, developers can ensure that sensitive containers are not accessible by less secure containers, thus enhancing overall system security.

🕸️ Bridge Networking as Default: The default bridge networking allows containers to communicate easily but can expose vulnerabilities if not managed properly. While convenient for development, relying solely on the default bridge network could lead to security issues when deploying applications in production environments.

🛠️ Flexibility in Networking: Docker’s flexibility in networking allows developers to create custom networks tailored to their specific application needs. Custom bridge networks can be created to isolate traffic and improve security, making it easier to manage container interactions without exposing sensitive data.

🌍 Host Networking Dangers: Using host networking can simplify access but poses significant security risks. When containers share the same network as the host, they inherit potential vulnerabilities, allowing any user with host access to interact with all containers. This method should be used with caution and only when necessary.


```bash

docker port --all

docker port container_name
```

types of network
base machine is windows i.e ip 192.168.1.0

1> Bridge network 
     new network is created different from base machine 
        new network is 172.31.0.0
    
2> Host network
    base machine network ip address are obtained by host network 
      network will be 192.168.1.0
```bash
docker network ls 

docker network --help 

docker network create aws 

sudo docker network create --driver <driver-name> <bridge-name>
e.g 

docker network create --driver bridge demo-network(name of nw) 

docker network ls

docker network inspect aws

docker network create --driver "bridge" --subnet=30.0.0.0/16 net1


docker run -itd --name con2 --network=aws ubuntu 

docker ps -a

docker inspect con2

to check which network has connected how many container 

docker network inspect <network_name>

after creation of container we can change network 

docker network connect --help

docker network connect aws con1

sudo docker network connect <network-name> <container-name or id>

docker network inspect con1 

disconnect network from container

 docker network rm aws    (remove network must be disconnected )
 docker network disconnect aws con1
docker network rm aws
 docker network prune (delete all unused network)
docker network 
