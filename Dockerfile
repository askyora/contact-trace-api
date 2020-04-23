FROM openjdk:11.0-slim

MAINTAINER Name <shanakaray@yahoo.com>

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} contact-trace-api.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/contact-trace-api.jar"]