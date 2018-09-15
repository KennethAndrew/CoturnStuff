FROM ubuntu:16.04
COPY ./configure. /home/ubuntu/
RUN chmod +x configure.bash
RUN ./configure.bash

