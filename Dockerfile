FROM ubuntu:16.04
COPY ./configure.bash
RUN chmod +x configure.bash
RUN ./configure.bash

