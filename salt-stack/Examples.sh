#!/bin/bash

echo
# Test ping to all minions
echo "Send a test ping to all minions..."
salt '*' test.ping

echo
# show the env variable ROLE on each minion
echo "show the env variable ROLE on each minion..."
salt '*' cmd.run 'echo $ROLE'

echo
# Show the minion ID and ROLE in a easier to script format
echo "Show the minion ID and ROLE in a easier to script format..."
salt '*' cmd.run 'echo $ROLE' --output=txt

echo
# get the host IP for each minion the cheating way...
echo "Now lets use the ID, ROLE and /etc/hosts to get more interesting data..."
for i in `salt '*' cmd.run 'echo $ROLE' --out=txt | sed 's/ //'`;
do
 ID=`echo ${i} | cut -d ':' -f1`;
 ROLE=`echo ${i} | cut -d ':' -f2`;
 IP=`salt $ID cmd.run 'tail -1 /etc/hosts' --out=txt | awk '{print $2}'`;
 echo "Server $ID with IP of $IP has a ROLE of $ROLE";
done;

echo
echo "Just some quick examples.  Far more details can be found at https://docs.saltstack.com/en/latest/ref/cli/"
echo

