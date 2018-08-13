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
            
test()
{
  echo "$1"
}


v3_upvars=(
 "read_in_updates 'Primary or Secondary switch?' 'HA_PAIR_TYPE' 'Primary'"
 "read_in_updates 'Operating Mode?' 'SWITCH_HA' 'DS-V3'"
 "read_in_updates 'PicOS Version?' 'PICA_V3' '2.11.4.1/cd4d16f'"
 "read_in_updates 'STP Version? (Use NONE if disabled)' 'STP_VERSION' 'RSTP'"
 "read_in_updates 'Lenovo or Dell Hardware?' 'HARDWARE_TYPE' 'DELL'"
 "read_in_updates 'Interconnect: DualSwitch supports two configs. \
                   Option1=create SINGLE MLAG across all uplink port. \
                   Option2=create TWO MLAG ports out of all uplink ports. \
                   For SingleSwitch, you must select Option1. \
                   See Pre-Install guide for details of these two switch configs' 'INTERCONNECT_CONFIG' 'Option1'"
            )
new_vars=(
"read_in_updates '"
)

new_install()
{
#Is this INternal or is the Customer
#If internal, ref IGnite Env, answer more questions
 ./reset-exp.sh
 ./test-onie-login.exp
 ./load-onie.exp
 ./partition-check.exp
 ./license.exp
 ./install-picos.exp
 ./install-nc.exp
 ./ship-prep.exp
}

v3_upgrade()
{
./reset-exp.sh
./test-login.exp
./picos-backup.exp
./parse-config.sh
./reload-onie.exp
./partition-check.exp
./license.exp
./install-picos.exp
./install-nc.exp
./restore-upgrade.exp
./cleanup.exp
}

picos_upgrade()
{
./reset-exp.sh
./test-login.exp
./picos-upgrade.exp
./parse-config.sh
./reload-onie.exp
./partition-check.exp
./license.exp
./install-picos.exp
./install-nc.exp
./restore-config.exp
}

usage_start()
{
}

main()
{
read_in_updates 'Is this a New Install <NI>, V3Upgrade <V3>, or PicosUpgrade <PU>?' 'INSTALL_TYPE' 'NI'
case $INSTALL_TYPE in
	NI) new_install;;
	V3) v3_upgrade;;
	PU) picos_upgrade;;
	*) usage_start;;
esac
	
for i in "${new_vars[@]}"; do
  eval "$i"
  echo "$i" | cut -d "'" -f 4 | { read -r Var; echo  "This is $Var"; }
done
}

#parse_arguments $@
#./reset-exp.sh
#./0-test-login.exp
#./1-picos-backup.exp
#. ./parse-config.sh Picos-Config.bak
#./2-reload-onie.exp $mgmtip $mgmtgw $mgmtdns
#./3-partition-check.exp
#./4-license.exp $mgmtip $mgmtgw $mgmtdns $mgmthn
#./5-install-picos.exp $mgmthn
#./6-install-nc.exp $cldtxver

main $@
