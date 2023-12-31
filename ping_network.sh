#!/bin/bash
#@author - Himangshu (Code write by)
###
##
# This script will ping all ip's of the network you pass to them
##
###

function fping_check() {
## Fping install check
FPING=`whereis fping | awk -F":" '{ print $2 }' | awk -F" " '{ print $1 }'`

if [ -z $FPING ]; then
   echo -e '''Not found Fping 
              Please install using:
              sudo apt-get install fping
              or
              sudo yum install fping
           '''
   exit 1
fi
}


fping_check
echo -e '''
        Tell me you network:
        eg: 192.168.0.1
        '''
    read NETWORK

    for i in $(seq 254)
    do
      NEW_NETWORK=$(echo ${NETWORK} | cut -d '.' -f1,2,3)
      RETURN=$(fping ${NEW_NETWORK}.${i} 2> /dev/null )
      NEW_RETURN=$(echo ${RETURN} | cut -d ' ' -f3 )
      if [ ${NEW_RETURN} = "alive" ]; then
        echo "${NEW_NETWORK}.${i} responding to ping \O/ "
      else
        echo "${NEW_NETWORK}.${i} not responding to ping =( "
      fi
    done
