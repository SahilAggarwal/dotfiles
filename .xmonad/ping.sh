#!/bin/bash

output=`ping -c 1 google.com -W 1`

if [ $? -eq 0 ]; then
    echo "Ping: <fc=green>:)</fc>"
else
    echo "Ping: <fc=ref>:(</fc>"
fi    
