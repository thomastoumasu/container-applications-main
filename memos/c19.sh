mkdir logs
touch logs/text.log
docker run -v ./logs/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service