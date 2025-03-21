
# Docker compose 

Docker Composis a tool that allows you to define and manage multi-container Docker applications using a simple YAML file (docker-compose.yml). Instead of running multiple docker run commands, you can define services (containers), networks, and volumes in a single file and start everything with one command.


# 🔹 Why Use Docker Compose?

## 
  1. Multi-Container Management – Easily manage applications that require multiple containers (e.g., a web app with a database).
  2. Simplified Configuration – Define services, networks, and volumes in one YAML file.
  3. Portability – Share the configuration across teams and environments.
  4. One-Command Deployment – Start all services with docker-compose up.
  5. Automatic Networking – Containers communicate using service names instead of IP addresses.

# 🔹 When to Use Docker Compose?
## 
  1. Development & Testing – Quickly set up development environments.
  2. Multi-Container Applications – When an app requires a web server, database, and other services.
  3. CI/CD Pipelines – Automate testing environments in CI/CD workflows.
