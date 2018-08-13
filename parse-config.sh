#!/bin/bash

conf_file="$1"
while IFS='' read -r line || [[ -n "$line" ]]; do
  case $line in
	*ip-address*) mgmtip=$(echo $line | cut -d ' ' -f 7);;
	*ip-gateway*) mgmtgw=$(echo $line | cut -d ' ' -f 7);;
	*dns-server-ip*) mgmtdns=$(echo $line | cut -d ' ' -f 4);;
	*hostname*) mgmthn=$(echo $line | cut -d ' ' -f 4);;
  esac
done < $conf_file
