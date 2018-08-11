FROM openjdk:8-jre
VOLUME /tmp
#阿里云构建不需要复制文件，会根据构建版本自动识别
#ADD springcloud-config-0.0.1-SNAPSHOT.jar springcloud-config.jar
COPY target/springcloud-config-0.0.1-SNAPSHOT.jar springcloud-config.jar
RUN bash -c 'touch /springcloud-config.jar'
EXPOSE 8888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springcloud-config.jar"]