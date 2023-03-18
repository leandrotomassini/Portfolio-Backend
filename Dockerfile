FROM amazoncorretto:17.0.0-alpine
MAINTAINER LCT
COPY target/backend-0.0.1-SNAPSHOT.jar portfoliobackend.jar
ENTRYPOINT [ "java", "-jar", "/portfoliobackend.jar" ]
