docker build -f Dockerfile18 -t web-server .
docker run -p 127.0.0.1:8080:8080 web-server server