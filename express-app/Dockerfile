FROM node:16

COPY . .

RUN npm install

EXPOSE 8080

CMD node index.js

# docker build -t app .  
# docker run --name app --rm -p 8000:8080 app
# docker run --name app --rm -p 8000:8080 thomastoumasu/container-ex-express-app:latest