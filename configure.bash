#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install sqlite3 libsqlite3-dev
sudo apt-get install libssl-dev

cd libevent
tar -xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
sudo make install
cd

cd coturn 
tar -xzvf coturn_4.5.0.7.orig.tar.gz
cd turnserver-4.5.0.7
./configure
make
sudo make install
cd

publichostname=$(curl http://169.254.169.254/latest/meta-data/public-hostname 2>/dev/null)
publicip=$(dig +short myip.opendns.com @resolver1.opendns.com)
privateip=$(hostname -I)

turnserver -o -f -a -n -L $privateip -p 3001 -X $publicip -E $privateip -u user:password  -r $publichostname

