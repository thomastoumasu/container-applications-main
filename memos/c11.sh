docker run --name first -d nginx:1.25-alpine
docker run --name second -d nginx:1.25-alpine 
docker run --name third -d nginx:1.25-alpine 
docker stop first second
docker ps -a
