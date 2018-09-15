FROM ubuntu:16.04

WORKDIR /

COPY . .

RUN yes|apt-get update
RUN yes|apt-get install build-essential
RUN yes|apt-get install sqlite3 libsqlite3-dev
RUN yes|apt-get install libssl-dev
RUN yes|apt-get install libevent-dev

RUN wget http://turnserver.open-sys.org/downloads/v4.5.0.5/turnserver-4.5.0.5.tar.gz
RUN tar -xzvf turnserver-4.5.0.5.tar.gz
RUN cd turnserver-4.5.0.5
RUN ./configure	
RUN make
RUN make install
RUN cd

RUN chmod +x configure.bash
RUN ./configure.bash



