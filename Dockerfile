FROM openjdk:8-jre
VOLUME /tmp
ADD springcloud-infrastructure-config.jar springcloud-infrastructure-config.jar
RUN bash -c 'touch /springcloud-infrastructure-config.jar'
EXPOSE 35001
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xms512m","-Xmx512m","-jar","/springcloud-infrastructure-config.jar"]