# instead of starting with ubuntu, use a pre-built image
FROM amazoncorretto:8
WORKDIR /usr/src/app
COPY . .
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

# docker build -t jsp . && docker run -p 8080:8080 jsp