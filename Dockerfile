FROM ubuntu:16.04
COPY . /app
RUN chmod +x configure.bash
RUN ./configure.bash

