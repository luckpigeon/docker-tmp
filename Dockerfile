FROM fs185085781/webos:latest
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
ENV JAVA_VERSION=8u212
ENV JAVA_ALPINE_VERSION=8.212.04-r0
RUN /bin/sh -c ls -a webos && unzip /webos/webos.zip -d /webos/
EXPOSE 8088
WORKDIR /webos/api
CMD ["/bin/sh" "-c" "sh restart.sh ; sleep 999999d"]
