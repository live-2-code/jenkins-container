FROM jenkins/jenkins:latest
USER root
RUN echo 'root:root' | chpasswd
RUN apt-get -y update && \
    apt-get install -y sudo python python3-pip
USER jenkins