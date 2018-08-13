kill -9 9365
ls -al
vim 1-picos-backup.exp 
./1-picos-backup.exp 
ls -al
chmod +x 2-reload-onie.exp 
ls
ls -al
chmod +x nc-config.sh 
vim 2-reload-onie.exp 
ps aux | grep expect
ps aux | grep ttyS0
./start
vim 2-reload-onie.exp 
ls
vim 1-picos-backup.exp 
ls
./start 
ls
rm Picos-Config-\$HOSTNAME 
./start 
cat 1
vim 1-picos-backup.exp 
ls
ls -al
cat 1-picos-backup.exp 
vim 2-reload-onie.exp 
./2-reload-onie.exp 
vim 2-reload-onie.exp 
./2-reload-onie.exp 
ps aux | grep tty
pkill -c cu
ps aux | grep expect
kill -9 9488
./start 
./2-reload-onie.exp 
ps aux | grep tty
pkill -c cu
ps aux | grep expect
kill -9 9537
./start
./2-reload-onie.exp 
ps aux | grep expect
kill -9 9558
pkill -c cu
./start 
./2-reload-onie.exp 
./start 
pkill -c cu
./start 
ps aux | grep expect
kill -9 9576
pkill -c cu
./start 
./2-reload-onie.exp 
ps aux | grep expect
kill -9 9604
pkill -c cu
./start 
./2-reload-onie.exp 
pkill -c cu
ps aux | grep expect
./2-reload-onie.exp 
ps aux | grep expect
kill -9 9676
./start 
./2-reload-onie.exp 
./start 
./2-reload-onie.exp 
ps aux | grep expect
kill -9 9708
pkill -c cu
screen 
./start 
ps aux | grep expect
ps aux | grep ttyS0
./2-reload-onie.exp 
./start 
pkill -c cu
./start 
./2-reload-onie.exp 
pkill -c cu
./2-reload-onie.exp 
./start 
vim partcheck.exp 
./start 
vim partcheck.exp 
cp partcheck.exp licpart.exp
vim licpart.exp 
chmod +x licpart.exp 
./licpart.exp 
vim licpart.exp 
pkill -c cu
./start 
vim licpart.exp 
./licpart.exp 
./start 
cat 0-test-login.exp 
vim partition-check.exp 
cat 2-reload-onie.exp 
cat 1-picos-backup.exp 
vim 2-reload-onie.exp 
vim partcheck.exp
cp 0-test-login.exp partcheck.exp 
vim partcheck.exp 
chmod +x partcheck.exp 
./partcheck.exp 
pkill -c cu
./partcheck.exp 
pkill -c cu
vim partcheck.exp 
./partcheck.exp 
pkill -c cu
vim partcheck.exp 
./partcheck.exp 
pkill -c cu
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
./start 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
sudo mkdir /root/tmp
 sudo mv /tmp/* /root/tmp
 sudo mkfs.ext4 /dev/sda7
 sudo mount -a /dev/sda7 /tmp
 sudo mv /root/tmp/* /tmp/
 sudo rm -rf /root/tmp
 sudo df -h 
./start 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
autoexpect ./start
cat script.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
./start 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
pkill -c cu
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./start 
./partcheck.exp 
vim partcheck.exp 
./start 
./partcheck.exp 
vim partcheck.exp 
cat partcheck.exp 
vim 2-reload-onie.exp 
./start 
vim partcheck.exp 
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
pkill -c cu
./partcheck.exp 
vim partcheck.exp 
./partcheck.exp 
./start 
./partcheck.exp 
cat partcheck.exp 
vim 2-reload-onie.exp 
cat 2-reload-onie.exp 
vim licpart.exp 
vim partition-check.exp
chmod +x partition-check.exp 
vim licpart.exp 
ls -al
./partition-check.exp
vim partition-check.exp
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
./partition-check.exp
pkill -c cu
ps aux | grep expect
vim partition-check.exp 
./partition-check.exp
vim partition-check.exp 
ps aux | grep expect
kill -9 12539
./partition-check.exp
ps aux | grep expect
kill -9 12552
vim partition-check.exp 
./partition-check.exp
ps aux | grep expect
pkill -c cu
vim partition-check.exp 
./partition-check.exp
ps aux | grep expect
kill -9 12580
vim partition-check.exp 
./partition-check.exp
ps aux | grep expect
kill -9 12594
vim partition-check.exp 
./partition-check.exp
vim partition-check.exp 
./partition-check.exp
vim partition-check.exp 
./partition-check.exp
vim partition-check.exp 
ls -al
cat nc-config.sh 
vm 3-install-picos.exp 5-install-picos.exp 
mv 3-install-picos.exp 5-install-picos.exp 
mv partition-check.exp 3-partition-check.exp 
cat licpart.exp 
mv licpart.exp 4-license.exo
ls
mv 4-install-nc.exp 6-install-nc.exp 
mv 5-switch-config.exp 7-switch-config.exp 
l
ls
mv 4-license.exo 4-license.exp
ls
rm partcheck.exp 
rm script.exp 
ls -al
vim cldtx-network-upgrade.sh 
./3-partition-check.exp 
echo "$?"
vim cldtx-network-upgrade.sh 
./cldtx-network-upgrade.sh 
vim cldtx-network-upgrade.sh 
./cldtx-network-upgrade.sh 
|
echo "$?"
vim cldtx-network-upgrade.sh 

vim cldtx-network-upgrade.sh 
./cldtx-network-upgrade.sh 
vim cldtx-network-upgrade.sh 
./cldtx-network-upgrade.sh 
echo "$?"
./start 
pkill -c cu
./partition-check.exp
pkill -c cu
ls -al
cat 1-picos-backup.exp 
vim 1-picos-backup.exp 
pkill -c cu
ps aux | grep expect
kill -9 12731
ps aux | grep expect
kill -9 12749
pkill -c cu
vim 1-picos-backup.exp 
vim 4-license.exp 
cp 4-license.exp varstest.exp
vim varstest.exp 
./varstest.exp 8.8.8.8 stuff
vim vartest.sh
./varstest.sh
./vartest.sh
chmod +x vartest.sh 
./vartest.sh
ls -al
vim vartest.sh
./vartest.sh
ps aux | grep expect
kill -9 12982
ps aux | grep vars
kill -9 12982
ps aux | grep var
kill -9 12981
kill -9 12982
ps aux | grep var
pkill -c cu
./varstest.sh
./varstest.exp
vim varstest.exp 
./varstest.sh
ps aux | grep var
kill -9 13005
pkill -c cu
./vartest.sh
vim varstest.exp 
ps aux | grep var
./vartest.sh
vim vartest.sh
./vartest.sh
vim vartest.sh
./start
sed -i 's|:~\$ |$prompt|g' 0-test-login.exp 
cat 0-test-login.exp 
sed -i 's|:~\$ |$prompt|g' 0-test-login.exp 
cat 0-test-login.exp 
sed -i 's|:~\$ |'$prompt'|g' 0-test-login.exp 
cat 0-test-login.exp 
sed -i 's|':~\$ '|'$prompt'|g' 0-test-login.exp 
sed -i "s|':~\$ '|'$prompt'|g" 0-test-login.exp 
cat 0-test-login.exp 
cp 0-test-login.exp 0-test-login.exp.bak
vim 0-test-login.exp.bak 
sed -i "s|[:][~][\][$]|'$prompt '|g" 0-test-login.exp.bak 
cat 0-test-login.exp.bak 
cp 0-test-login.exp 0-test-login.exp.bak
cat 0-test-login.exp.bak 
sed -i "s|[:][~][\][$]|'$''prompt '|g" 0-test-login.exp.bak 
cat 0-test-login.exp.bak 
cp 0-test-login.exp 0-test-login.exp.bak
sed -i "s|[:][~][\][$]|\$prompt |g" 0-test-login.exp.bak 
cat 0-test-login.exp.bak 
cp 0-test-login.exp 0-test-login.exp.bak
sed -i "s|[:][~][\][$]|\$prompt|g" 0-test-login.exp.bak 
cat 0-test-login.exp.bak 
cp 0-test-login.exp 0-test-login.exp.bak
sed -i "s|[:][~][\][$]|\$prompt|g" 0-test-login.exp.bak 
cat 0-test-login.exp.bak 
vim 0-test-login.exp.bak 
./0-test-login.exp
cat v2-v3-conv.sh 
cp 0-test-login.exp 0-test-login.exp.bak
sed -i 12i 'set prompt ":~\$"' 0-test-login.exp.bak 
sed -i 12i|'set prompt ":~\$"' 0-test-login.exp.bak 
sed -i 12i|'set prompt ":~\\$"' 0-test-login.exp.bak 
sed -i 12i12 'set prompt ":~\\$"' 0-test-login.exp.bak 
sed -i 12i12 'set prompt ":~\\\$"' 0-test-login.exp.bak 
sed -i 12i12 'set prompt ":~\$"' 0-test-login.exp.bak 
cp 0-test-login.exp
vim 0-test-login.exp
sed -i "s|[:][~][\][$]|\$prompt|g" 0-test-login.exp
vim 0-test-login.exp
./0-test-login.exp
./start
sed -i "s|[:][~][\][$]|\$prompt|g" 1-picos-backup.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 2-reload-onie.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 3-partition-check.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 4-license.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 5-install-picos.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 6-install-nc.exp 
sed -i "s|[:][~][\][$]|\$prompt|g" 7-switch-config.exp 
vim 1-picos-backup.exp 
vim 2-reload-onie.exp 
vim 3
vim 3-partition-check.exp 
vim 4-license.exp 
vim 5-install-picos.exp 
vim 6-install-nc.exp 
vim 7-switch-config.exp 
ls
cat cldtx-network-upgrade.sh 
echo cat

cat cldtx-network-upgrade.sh 
cat
cat cldtx-network-upgrade.sh 
echo cat
vim cldtx-network-upgrade.sh 
vim test
chmod +x test 
./test
vim test
./test
vim test
./test
vim test
./test
vim test
./test
vim test
./test
vim test
./test
echo ./test
./test
vim test
./test
vim test
./test
vim test
./test
pidof cu
pidof tty
pidof expect
ps aux
pidof sshd
pidof cat
vim reset-exp.sh
./start
cls
clear
logout
vim reset-exp.sh
chmod +x reset-exp.sh 
./reset-exp.sh 
vim reset-exp.sh
kill -h
kill --help
man kill
ls
vim 4-license.exp 
./start 
vim proc-test.exp
vim 4-license.exp 
vim proc-test.exp 
read --help
vim 4-license.exp 
vim cldtx-network-upgrade.sh 
vim v2-v3-conv.sh 
vim 4-license.exp 
ls
vim v2-v3-conv.sh 
./start
vim v2-v3-conv.sh 
./start
ls
cat Picos-Config.bak 
rm Picos-Config.bak 
vim Picos-Config.bak
./parse-config.sh 
ls
vim Picos-Config.bak
./parse-config.sh 
./parse-config.sh Picos-Config.bak 
vim Picos-Config.bak 
./parse-config.sh Picos-Config.bak 
vim 4-license.exp 
vim 2-reload-onie.exp 
./parse-config.sh Picos-Config.bak 
vim 4-license.exp 
vim 2-reload-onie.exp 
vim 4-license.exp 
vim 2-license.exp 
vim 2-reload-onie.exp 
vim 3-partition-check.exp 
vim cldtx-network-upgrade.sh 
./cldtx-network-upgrade.sh 
vim cldtx-network-upgrade.sh 
vim parse-config.sh 
./cldtx-network-upgrade.sh 
vim cldtx-network-upgrade.sh 
vim 0-test-login.exp
./start
./0-test-login.exp
vim cldtx-network-upgrade.sh 
ls
cat 1-picos-backup.exp 
vim 1-picos-backup.exp 
ls
vim parse-config.sh 
vim 4-license.exp 
vim cldtx-network-upgrade.sh 
vim 6-install-nc.exp 
./start
./6-install-nc.exp 
./6-install-nc.exp 3.5.2.73
./start
./6-install-nc.exp 3.5.2.73
./start
./6-install-nc.exp 3.5.2.73
./start
vim 6-install-nc.exp 
./6-install-nc.exp 3.5.2.73
ls
./start 
pidof cu
kcu
kcu=$(pidof cu)
$kcu
kill -9 $kcu
echo $kcu
pidof cu
pidof expect
./start
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
./start 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
vim 4-license.exp 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
echo $?
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
echo $?
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./start
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
echo $?
echo echo
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
./reset-exp.sh 
./4-license.exp 10.101.10.95/19 10.101.0.1 8.8.8.8 support-secondary
echo $BASH_COMMAND
$BASH_COMMAND
${BASH_COMMAND}
ls
cat v2-v3-conv.sh 
vim parse-config.sh
chmod +x parse-config.sh
./parse-config.sh 
echo $mgmtip
vim parse-config.sh
vim cldtx-network-upgrade.sh 
vim parse-config.sh
vim 4-license.exp 
vim 5-install-picos.exp 
vim cldtx-network-upgrade.sh 
./5-install-picos.exp support-secondary
vim 5-install-picos.exp 
./5-install-picos.exp support-secondary
./reset-exp.sh 
./start 
vim 5-install-picos.exp 
./5-install-picos.exp support-secondary
vim 5-install-picos.exp 
./5-install-picos.exp support-secondary
./start
vim 1-picos-backup.exp 
./start
vim 1-picos-backup.exp 
./start
ls
vim 3-partition-check.exp 
vim 1-picos-backup.exp 
vim 2-reload-onie.exp 
ls
rm 0-test-login.exp.bak 
ls
ls a
l;
ll
rm proc-test.exp 
cat test 
rm test
cat vartest.sh 
rm vartest.sh 
cat varstest.exp 
rm varstest.exp 
ll
./start
cat cldtx-network-upgrade.sh 
cat $mgmtip
echo$mgmtip
echo $mgmtip
vim 5-install-picos.exp 
./5-install-picos.exp support-secondary
vim 5-install-picos.exp 
./5-install-picos.exp support-secondary
echo $?
vim cldtx-network-upgrade.sh 
vim 5-install-picos.exp 
vim 6-install-nc.exp 
./6-install-nc.exp 3.5.2.73
vim 6-install-nc.exp 
vim 5-install-picos.exp 
vim 6-install-nc.exp 
vim 5-install-picos.exp 
./5-install-picos.exp 
./reset-exp.sh 
./start
vim 5-install-picos.exp 
vim 6-install-nc.exp 
ls
vim test
vim test.exp
chmod +x test.exp 
./test.exp 
./reset-exp.sh 
vim test.exp
./test.exp 
./reset-exp.sh 
rm -rf test.exp 
vim 0-test-login.exp 
./0-test-login.exp 
vim 0-test-login.exp 
./0-test-login.exp 
vim 0-test-login.exp 
ls
vim 6-install-nc.exp 
./6-install-nc.exp 3.5.2.73
vim 6-install-nc.exp 
vim 5-install-picos.exp 
vim 6-install-nc.exp 
cat 6-install-nc.exp 
cat./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
vim 6-install-nc.exp 
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./reset-exp.sh 
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./reset-exp.sh 
vim 6-install-nc.exp 
./start
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
vim 7-switch-config.exp 
vim 6-install-nc.exp 
vim 7-switch-config.exp 
vim 6-install-nc.exp 
vim 5-install-nc.exp 
vim 5-install-picos.exp 
vim 6-install-nc.exp 
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./reset-exp.sh 
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./reset-exp.sh 
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./start
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./start
./6-install-nc.exp 3.5.2.73 secondary DS-V3 RSTP Dell Option1
./reset-exp.sh 
/start
./start
vim cldtx-network-upgrade.sh 
vim new-script.sh
cp cldtx-network-upgrade.sh new-script.sh 
vim new-script.sh
vim 0-test-login.exp 
vim start
vim 0-test-login.exp 
vim start
vim 0-test-login.exp 
ls
ll
vim cldtx-network-upgrade.sh 
vim bash/new-script.sh 
touch v3upgrade.sh
touch picosupgrade.sh
touch custinstall.sh
touch new_internal_install
touch new_internal_install.sh
mv custinstall.sh new_customer_install.sh
ls 
cat 6-install-nc.exp 
cat 5-install-picos.exp 
ip a
vim 1-picos-backup.exp 
cat 5-install-picos.exp 
cat 2-reload-onie.exp 
cat cldtx-network-upgrade.sh 
./start
vim 6-install-nc.exp 
./start
vim 5-install-picos.exp 
./start
vim 6-install-nc.exp 
vim 7-switch-config.exp 
vim 6-install-nc.exp 
vim 7-switch-config.exp 
vim ./parse-config.sh 
vim 7-switch-config.exp 
vim 6-install-nc.exp 
mkdir expect
cp *.exp expect/
cd expect/
ls
mv 2-reload-onie.exp reload-onie.exp
ls -al
rm onie-thru-picos.exp 
cd ..
mkdir conns
mkdir bash
cp *.sh bash/
cp reset-exp.sh conns
cp start conns
ls
mkdir expect/
cd expect/
ls
mv 0-test-login.exp test-login.exp
mv 1-picos-backup.exp picos-backup.exp
mv 3-partition-check.exp partition-check.exp
mv 4-license.exp license.exp
mv 5-install-picos.exp install-picos.exp
mv 6-install-nc.exp install-nc.exp
mv 7-switch-config.exp switch-config.exp
cp switch-config.exp ship-prep.exp
cp switch-config.exp restore-upgrade.exp
cp switch-config.exp cleanup.exp
vim reload-onie.exp 
cd ~
./0-test-login.exp 
./reset-exp.sh 
./0-test-login.exp 
./reset-exp.sh 
./start
./0-test-login.exp 
./reset-exp.sh 
./0-test-login.exp 
ps aux | grep ttyS0
./reset-exp.sh 
kill -9 19406
cat reset-exp.sh 
kscreen = $(pidof SCREEN)
kscreen=$(pidof SCREEN)
kill -9 $kscreen
ps aux | grep ttyS0
ps aux 
pidof postfix
pidof sshd
./0-test-login.exp 
vim 4-license.exp 
ls -al
tree
yum install tree
tree
ls
cp new-script.sh new_customer_install.sh 
cp new-script.sh picosupgrade.sh 
cp new-script.sh v3upgrade.sh 
vim v3upgrade.sh 
vim new-script.sh 
vim v3upgrade.sh 
vim new-script.sh 
vim v3upgrade.sh 
less script.exp 
cat ignite-network-upgrade.exp 
cat script.exp 
less script.exp 
./start
ls
cp picosupgrade.sh ignite-upgrade.sh
vim ignite-upgrade.sh 
cp start start_ssh
vim start_ssh 
ssh-keygen -t rsa 
ssh-copy-id -i .ssh/id_rsa tester@ignite-proxy.cloudistics.com
ssh 'tester@ignite-proxy.cloudistics.com'
ssh -i .ssh/id_rsa 'tester@ignite-proxy.cloudistics.com'
vim start_ssh 
autoexpect ./start_ssh 
cat script.exp 
vim ignite-upgrade.sh 
cp 0-test-login.exp ignite-network-upgrade.exp
vim ignite-network-upgrade.exp 
vim start_ssh 
./start_ssh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 36442 7xystw5v
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129

./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
autoexpect ./start_ssh 
cat script.exp 
vim ignite-network-upgrade.exp 
./reset-exp.sh 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
./reset-exp.sh 
vim ignite-network-upgrade.exp 
./ignite-network-upgrade.exp 48584 zagvpt5j 4.0.0.565129
find / -name *tcp*
 ssh -A -t -l tester ignite-proxy.cloudistics.com -L 64000:localhost:64000 ssh -A -t -l cldtx_support localhost -L 64000:localhost:16171
 ssh -A -t -l tester ignite-proxy.cloudistics.com -L 64000:localhost:64000 ssh -A -t -D64000 -l cldtx_support localhost -L 64000:localhost:16171
./start
ps aux | grep tty
cu -l /dev/ttyS0
ip a
history 
history | less
stty -F /dev/ttyS0 112500
minicom -s
stty -F /dev/ttyS0 115200
cu -l /dev/ttyS0
  ip a
./start
cat /dev/ttyS0
./start
shutdown -h now
./start
vim start
./start
vim start
./start
vim start
man cu
vim start
./start
vim start
ls
vim 0-test-login.exp 
cat ignite-network-upgrade.exp 
vim ignite-upgrade.sh 
cat ignite-network-upgrade.exp 
./start
ls
cat Picos-Config.bak 
./start
