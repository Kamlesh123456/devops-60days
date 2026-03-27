## Docker Container Lifecycle

Created → Running → Stopped → Deleted

## Command Differences

docker run   → create + start new container  
docker start → start existing container  
docker stop  → stop running container  
docker rm    → remove container  
docker exec  → run command inside running container  

## Port Mapping

-p HOST_PORT:CONTAINER_PORT

Example:
-p 8080:80

Traffic from localhost:8080 goes to container port 80.

## Data Behavior

Containers lose data when removed because their writable layer is deleted.

## Volumes

Volumes store data outside container lifecycle, enabling persistence.
