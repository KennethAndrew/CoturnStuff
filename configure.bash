#!/usr/bin/env bash

#cd libevent
#tar -xzvf libevent-2.0.21-stable.tar.gz
#cd libevent-2.0.21-stable
#./configure
#make
#sudo make install
#cd

#cd coturn 
#tar -xzvf coturn_4.5.0.7.orig.tar.gz
#cd turnserver-4.5.0.7
#./configure
#make
#sudo make install
#cd
#
 yes|apt-get update
 yes|apt-get install build-essential
 yes|apt-get install sqlite3 libsqlite3-dev
 yes|apt-get install libssl-dev
 yes|apt-get install libevent-dev
 yes|apt-get install wget
 yes|apt-get install dnsutils 
 rm -rf /var/lib/apt/lists/*

 wget http://turnserver.open-sys.org/downloads/v4.5.0.5/turnserver-4.5.0.5.tar.gz
 tar -xzvf turnserver-4.5.0.5.tar.gz
 cd turnserver-4.5.0.5
 ./configure	
 make
 make install
 cd

 
#publichostname=$(curl http://169.254.169.254/latest/meta-data/public-hostname 2>/dev/null)
#publicip=$(dig +short myip.opendns.com @resolver1.opendns.com)
#privateip=$(hostname -I)

turnserver #-o -f -a -n -p 3001 -X $publicip -u user:password  -r $publichostname

