#!/bin/bash

EXEC_NAME=$(basename $0)
set -e
#usage $EXEC_NAME -t <Primary|Secondary> -m <DS-V3|SS-V3> -s <PVST+|MSTP|RSTP|NONE> -e <Dell|Lenovo> -i <Option1|Option2> - See User Guide for more details"



parse_arguments()
{
while getopts "t:m:s:e:i:" arg
do
case $arg in
t) HA_PAIR_TYPE=${OPTARG}; echo $arg;;
m) SWITCH_HA=${OPTARG};;
s) STP_VERSION=${OPTARG};;
e) HARDWARE_TYPE=${OPTARG};;
i) INTERCONNECT_CONFIG=${OPTARG};;
*) usage;;
esac
done
}



main()
{
parse_arguments $@
./reset-exp.sh
./0-test-login.exp
./1-picos-backup.exp
. ./parse-config.sh Picos-Config.bak
./2-reload-onie.exp $mgmtip $mgmtgw $mgmtdns
./3-partition-check.exp
./4-license.exp $mgmtip $mgmtgw $mgmtdns $mgmthn
./5-install-picos.exp $mgmthn
./6-install-nc.exp $cldtxver
}

main $@
