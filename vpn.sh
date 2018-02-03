#!/bin/sh

output=`nmcli | grep con | grep tun`

if [[ -z $output ]]; then
  echo "VPN: <fc=red>OFF</fc>"
elif [[ ! -z $output ]]; then
  echo "VPN: <fc=green>ON</fc>"
fi

exit 0
