FROM --platform=linux/amd64 terminal

USER root
RUN apt install -y \ 
    sshpass \
    ansible

USER mew-docker

WORKDIR /home/mew-docker/workdir