FROM --platform=linux/amd64 terminal

USER root
RUN apt install -y \ 
    sshpass \
    ansible

USER mew-docker

RUN ansible-galaxy collection install community.docker --upgrade

WORKDIR /home/mew-docker/workdir