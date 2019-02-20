# devSaltCluster
Dev cluster of 4 servers running SaltStack on Ubuntu 18.04<br>
<br>
A quick start is as follows:

Check out the wiki <a href="https://github.com/jrentz/devSaltCluster/wiki">HERE</a>

Clone this repo
Build the SaltStack cluster by running the following from the cloned repo:
sudo ./start.sh
Leave this window open as it now displays ALL of the debug info for all servers.
Opening a new terminal window, log into the SaltStack master by running the following from the repo:
sudo ./login_master.sh
From the master, run the following:
 cd
 wget wget https://raw.githubusercontent.com/jrentz/devSaltCluster/master/salt-stack/Examples.sh
 chmod +x Examples.sh
 ./Examples.sh

 Have FUN!
