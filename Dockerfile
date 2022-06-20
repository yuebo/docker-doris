FROM centos:7

RUN yum install -y java-1.8.0-openjdk ant cmake byacc flex automake libtool binutils-devel bison
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.332.b09-1.el7_9.x86_64/
ADD doris /opt/doris
RUN ls /opt/doris

