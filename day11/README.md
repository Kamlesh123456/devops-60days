# Day 11: Docker Containers – Lifecycle, Exec, Ports & Volumes

## Objective
Understand how Docker containers behave in real-world scenarios.

## Topics Covered
- Container lifecycle (run, stop, start, remove)
- Difference between docker run, start, exec
- Port mapping (-p)
- Logs and debugging
- Why container data is temporary
- Volumes for persistent storage

## Hands-on Work
- Ran nginx container
- Exposed container using port mapping
- Entered container using docker exec
- Tested data loss inside container
- Created Docker volume and verified persistence

## Key Learning
Containers are ephemeral (temporary).  
Volumes are required to persist data beyond container lifecycle.

## Commands Summary
docker run -d --name mynginx -p 8080:80 nginx  
docker ps  
docker stop mynginx  
docker start mynginx  
docker exec -it mynginx bash  
docker logs mynginx  
docker rm -f mynginx  
docker volume create mydata  
docker run -it -v mydata:/data ubuntu bash
