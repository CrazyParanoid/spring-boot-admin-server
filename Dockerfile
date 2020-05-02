FROM openjdk:8-jdk-alpine

COPY target/admin-server-1.0.jar /opt/admin-server/

RUN mkdir -p /opt/admin-server/config

COPY ./config/application.yaml /opt/admin-server/config
COPY ./config/logback.xml /opt/admin-server/config

# setting proper TZ
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
VOLUME /opt/admin-server/logs

WORKDIR /opt/admin-server/

CMD ["java","-jar","admin-server-1.0.jar"]