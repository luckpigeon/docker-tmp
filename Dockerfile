FROM openjdk:8-alpine
ADD ./api  /home/api
ADD ./web /home/web
WORKDIR /home/api
ENV JAVA_HOME=/usr/java/openjdk-8
ENV LANG=C.UTF-8
ENV JAVA_VERSION=8u282
RUN java -version && chmod +x /home/api/restart.sh
EXPOSE 8088
ENTRYPOINT java -javaagent:webos.jar -jar webos.jar