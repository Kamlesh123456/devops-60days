# Pull image
docker pull nginx

# Run container
docker run -d --name mynginx -p 8080:80 nginx

# List containers
docker ps
docker ps -a

# Stop/start/restart
docker stop mynginx
docker start mynginx
docker restart mynginx

# Logs
docker logs mynginx

# Enter container
docker exec -it mynginx bash

# Remove container
docker rm -f mynginx

# Create volume
docker volume create mydata

# Run container with volume
docker run -it -v mydata:/data ubuntu bash
