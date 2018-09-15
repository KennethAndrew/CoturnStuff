FROM ubuntu:16.04

WORKDIR /

COPY . .

RUN chmod +x configure.bash\
&& ./configure.bash

EXPOSE 80



