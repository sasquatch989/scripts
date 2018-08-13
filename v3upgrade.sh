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


read_in_updates()
{
read -r -n1 -p "$1 [$3]: " INPUT
  case $INPUT in
    '') INPUT=$3;;
    *) ;;
  esac
  case $2 in
      HA_PAIR*|*_V3) eval "$2=${INPUT,,}" ;;
      SWITCH*|HARDW*|STP*) eval "$2=${INPUT^^}" ;;
      INTERCON*) eval "$2=${INPUT^}" ;;
      *) echo "Bad inputs" ;;
  esac
}
            


v3up_vars=(
 "read_in_updates 'Primary or Secondary switch?' 'HA_PAIR_TYPE' 'Primary'"
 "read_in_updates 'Operating Mode?' 'SWITCH_HA' 'DS-V3'"
 "read_in_updates 'PicOS Version?' 'PICA_V3' '2.11.5.cloudistics.1/191bb4d'"
 "read_in_updates 'Ignite Version?' 'IGNITE_VER' '3.5.2.73'"
 "read_in_updates 'STP Version? (Use NONE if disabled)' 'STP_VERSION' 'RSTP'"
 "read_in_updates 'Lenovo or Dell Hardware?' 'HARDWARE_TYPE' 'DELL'"
 "read_in_updates 'Interconnect: DualSwitch supports two configs. \
                   Option1=create SINGLE MLAG across all uplink port. \
                   Option2=create TWO MLAG ports out of all uplink ports. \
                   For SingleSwitch, you must select Option1. \
                   See Pre-Install guide for details of these two switch configs' 'INTERCONNECT_CONFIG' 'Option1'"
            )


v3_upgrade()
{
./reset-exp.sh
./test-login.exp
./picos-backup.exp
./parse-config.sh /home/admin/Picos-Config.bak
./reload-onie.exp $mgmtip $mgmtgw $mgmtdns
./partition-check.exp
./license.exp
./install-picos.exp
./install-nc.exp
./restore-upgrade.exp
./cleanup.exp
}


main()
{
for i in "${new_vars[@]}"; do
  eval "$i"
  echo "$i" | cut -d "'" -f 4 | { read -r Var; echo  "This is $Var"; }
done
v3_upgrade 
}
main $@
