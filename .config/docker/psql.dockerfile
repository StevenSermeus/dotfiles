FROM --platform=linux/amd64 terminal

USER root

RUN apt install -y \
    postgresql-client

USER mew-docker