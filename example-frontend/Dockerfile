FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm install -g serve
ENV REACT_APP_BACKEND_URL=http://localhost:8080/api
RUN npm run build
CMD ["serve", "-s", "-l", "3000", "build"]

# docker build -t frontend . && docker run --name frontend --rm -p 3000:3000 frontend