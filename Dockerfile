FROM openjdk:19
ENV MONGO_URI=mongodb://localhost:27017/spring-boot-docker-demo
EXPOSE 8080
WORKDIR /usr/src/myapp
ADD target/neuefische-spring-boot-docker-demo-0.0.1-SNAPSHOT.jar app.jar
CMD ["sh", "-c", "java -jar app.jar"]