
# Docker file

The operating system (OS) libraries and dependencies required to run the application source code which is not reliant on the underlying operating system (OS) included in the Dockerfile, which is a standardized, executable component.

Dockerfile will define the processes to quickly produce an image. While creating your application, you should create a Dockerfile in order since the Docker daemon runs all of the instructions from top to bottom.


## Dockerfile commands/Instructions

### 1. FROM
Represents the base image(OS), which is the command that is executed first before any other commands.

Syntax
```bash 
FROM <ImageName> 
```
Example 

The base image will be ubuntu:19.04 Operating System.
```bash
FROM ubuntu:19.04
```

### 2. COPY

The copy command is used to copy the file/folders to the image while building the image. 

Syntax:
```bash
COPY <Source>   <Destination>  
```

Example: Copying the .war file to the Tomcat webapps directory
```bash
COPY target/java-web-app.war  /usr/local/tomcat/webapps/java-web-app.war
```
### 3. ADD
While creating the image, we can download files from distant HTTP/HTTPS destinations using the ADD command.
Syntax
```bash
ADD <URL>  
```
Example: Try to download Jenkins using ADD command 
```bash
ADD https://get.jenkins.io/war/2.397/jenkins.war
```

### 4. RUN
Scripts and commands are run with the RUN instruction. The execution of RUN commands or instructions will take place while you create an image on top of the prior layers (Image).
Syntax
```bash
RUN < Command + ARGS> 
```

Example
```bash
RUN touch file
```
### 5. CMD
The main purpose of the CMD command is to start the process inside the container and it can be overridden.
Syntax
```bash
CMD [command + args] 
```

Example: Starting Jenkins 
```bash
CMD ["java","-jar", "Jenkins.war"]
```
### 6. ENTRYPOINT
A container that will function as an executable is configured by ENTRYPOINT. When you start the Docker container, a command or script called ENTRYPOINT is executed.
It can’t be overridden.The only difference between CMD and ENTRYPOINT is CMD can be overridden and ENTRYPOINT can’t.
Syntax
```bash
ENTRYPOINT [command + args] 
```

Example: Executing the echo command.
```bash
ENTRYPOINT ["echo","Welcome to GFG"]
```
### 7. MAINTAINER
By using the MAINTAINER command we can identify the author/owner of the Dockerfile and we can set our own author/owner for the image.
Syntax:
```bash
MAINTAINER <NAME>
```

Example: Setting the author for the image as a GFG author.
```bash
MAINTAINER  GFG author 
```
