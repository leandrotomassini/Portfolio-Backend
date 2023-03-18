FROM amazoncorreto:17-alpine-jdk
MAINTAINER LCT
COPY target/backend-0.0.1-SNAPSHOT.jar portfoliobackend.jar
ENTRYPOINT [ "java", "-jar", "/portfoliobackend.jar" ]
