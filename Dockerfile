FROM alpine:3.16.2
RUN apk update
RUN apk upgrade
RUN apk --update add  procps
RUN apk fetch openjdk8
RUN apk add openjdk8
#ENV JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
#RUN ln -s /usr/lib/jvm/java-1.8-openjdk /usr/lib/jvm/jdk1.8.0_221
RUN apk add --update bash openssh sshpass unzip curl vim wget zip gzip sudo grep htop findutils lftp  
RUN apk add --no-cache net-snmp-tools
RUN apk add --no-cache tzdata
RUN apk add --update coreutils && rm -rf /var/cache/apk/*
