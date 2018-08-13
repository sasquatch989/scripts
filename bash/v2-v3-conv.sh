#!/bin/bash
#######################################################################
# CLOUDISTICS, INC. CONFIDENTIAL AND PROPRIETARY
#
# Copyright (C) 2013-2014 by AdaptiveApps, Inc.
# Copyright (C) 2014-2017 by Cloudistics, Inc.
# This work is the property of Cloudistics, Inc. (Company).
#
# It contains proprietary information and trade secrets of Company.
# Disclosure, use, or reproduction without the prior written approval
# of Company is prohibited. All rights reserved.
#######################################################################

EXEC_NAME=$(basename $0)

##############Set to real path before pushing out
CONF_FILE=/root/cldtx_switch_resource.old
PICA_V3='2.11.5.cloudistics.0/ba8c0a3'   #Or explicity define it here
NEW_VARS=("HA_PAIR_TYPE" "SWITCH_HA" "PICA_V3" "STP_VERSION" "HARDWARE_TYPE" "INTERCONNECT_CONFIG")
OLD_VARS=("BMC_VLAN" "MLAG_VLAN" "UPLINK_VLAN" "HYP_VLAN" "BMC_VLAN_IP" "BMC_VLAN_IP_PREFIX" "SWITCH_HA" "HA_PAIR_TYPE" "MLAG_VLAN_IP_PREFIX" "MLAG_PEER_LINK" "UPLINK_VLAN_IP" "UPLINK_VLAN_IP_PREFIX" "HYP_VLAN_IP" "HYP_VLAN_IP_PREFIX" "LOCAL_AS" "REMOTE_AS" "BGP_PEER" "BMC_DHCP_START" "BMC_DHCP_END" "DNS")

import_conf_settings()
{

if [[ ! -f $CONF_FILE ]]; then
/bin/echo "Settings file $CONF_FILE missing "
exit 1;
fi
source $CONF_FILE

}



check_running_as_root()
{
 if [ $(id -u) != 0 ]; then
 echo "script should be run with sudo or root user privileges"
 usage
 fi
}


create_v3_resource()
{

#Bring in new configs

for i in "${NEW_VARS[@]}"; do
sed -i "s~^$i=.*~$i=${!i}~" $V3_CONFIG
done

#Bring in Old configs
for j in "${OLD_VARS[@]}"; do
sed -i "s~^$j=.*~$j=${!j}~" $V3_CONFIG
done

#Fix Pica version check
sed -i -r "s~[2-3]\.[0-9]{1,2}\.[0-9]\/.{7}~$PICA_V3~" $V3_CONFIG

#M-Lag IP's

sed -i -r 's~MLAG_VLAN_IP=192.168.1.1~MLAG_VLAN_IP='$MLAG_VLAN_IP'~1' $V3_CONFIG
sed -i -r 's~MLAG_PEER_IP=192.168.1.2~MLAG_PEER_IP='$MLAG_PEER_IP'~1' $V3_CONFIG
sed -i -r 's~MLAG_VLAN_IP=192.168.1.2~MLAG_VLAN_IP='$MLAG_PEER_IP'~1' $V3_CONFIG
sed -i -r 's~MLAG_PEER_IP=192.168.1.1~MLAG_PEER_IP='$MLAG_VLAN_IP'~1' $V3_CONFIG

}



check_arguments()
{
if [[ -z $HA_PAIR_TYPE || -z $SWITCH_HA || -z $STP_VERSION || -z $HARDWARE_TYPE || -z $INTERCONNECT_CONFIG || -z $V3_CONFIG ]]; then
#echolog "Required values HA_PAIR_TYPE SWITCH_HA PICA_V3 STP_VERSION HARDWARE_TYPE INTERCONNECT_CONFIG are not set"
usage
fi
}



usage()
{
/bin/echo -e "Usage sudo $EXEC_NAME -v /path/to/v3-switch-resource -t <Primary|Secondary> -m <DS-V3|SS-V3> -s <PVST+|MSTP|RSTP|NONE> -e <Dell|Lenovo> -i <Option1|Option2> - See User Guide for more details"
exit 1
}

parse_arguments()
{
while getopts "v:t:m:s:e:i:" arg
do
case $arg in
t) HA_PAIR_TYPE=${OPTARG};;
m) SWITCH_HA=${OPTARG};;
s) STP_VERSION=${OPTARG};;
e) HARDWARE_TYPE=${OPTARG};;
i) INTERCONNECT_CONFIG=${OPTARG};;
v) V3_CONFIG=${OPTARG};;
*) usage;;
esac
done
}



main()
{
# check_running_as_root
import_conf_settings
parse_arguments $@
check_arguments
create_v3_resource
}

main $@
