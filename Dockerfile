FROM ubuntu:16.04

WORKDIR /

COPY . .

RUN chmod +x configure.bash\
RUN ./configure.bash

EXPOSE 3001



