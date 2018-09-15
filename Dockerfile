FROM ubuntu:16.04


# Create app directory
WORKDIR /

COPY . .
RUN chmod +x configure.bash
RUN ./configure.bash

