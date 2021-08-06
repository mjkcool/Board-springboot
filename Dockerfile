FROM openjdk:8-jdk-alpine
EXPOSE 8088
ADD target/board-springboot.jar board-springboot.jar
ENTRYPOINT ["java","-jar","/board-springboot.jar"]