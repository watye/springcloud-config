FROM openjdk:8-jre
VOLUME /tmp
RUN bash -c 'touch /springcloud-config.jar'
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springcloud-config.jar"]