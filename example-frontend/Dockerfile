# old version using serve
# FROM node:16-alpine3.18
# WORKDIR /usr/src/app
# COPY --chown=node:node . .
# ENV REACT_APP_BACKEND_URL=http://localhost:8080/api
# RUN npm install && npm install -g serve && npm run build && \
#   # apt-get purge -y --auto-remove curl && \
#   # rm -rf /var/lib/apt/lists/* && \
#   rm -rf /usr/src/app/src
# USER node
# CMD ["serve", "-s", "-l", "3000", "build"]

FROM node:16-alpine3.18 AS build-stage 
WORKDIR /usr/src/app
COPY --chown=node:node . .
ENV REACT_APP_BACKEND_URL=http://localhost:8080/api
RUN npm ci && npm run build

FROM nginx:1.25-alpine
# nginx.conf is necessary to change the server port from default 80 to 3000
COPY  ./nginx.conf /etc/nginx/nginx.conf
COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html
# no need for CMD, nginx starts up on its own

# docker build -t frontend . && docker run --name frontend --rm -p 3000:3000 frontend



