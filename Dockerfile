FROM ubuntu:16.04

WORKDIR /

COPY . .

RUN apt-get update
RUN apt-get install build-essential
RUN apt-get install sqlite3 libsqlite3-dev
RUN apt-get install libssl-dev

RUN cd libevent
RUN tar -xzvf libevent-2.0.21-stable.tar.gz
RUN cd libevent-2.0.21-stable
RUN ./configure
RUN make
RUN make install
RUN cd

RUN cd coturn 
RUN tar -xzvf coturn_4.5.0.7.orig.tar.gz
RUN cd turnserver-4.5.0.7
RUN ./configure
RUN make
RUN make install
RUN cd

RUN chmod +x configure.bash
RUN ./configure.bash



