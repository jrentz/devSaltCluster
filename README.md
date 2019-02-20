# devSaltCluster
Dev cluster of 4 servers running SaltStack on Ubuntu 18.04<br>
<br>
A quick start is as follows:<br><br>

Check out the wiki <a href="https://github.com/jrentz/devSaltCluster/wiki">HERE</a>
<br>
Clone this repo<br>
Build the SaltStack cluster by running the following from the cloned repo:<br>
<b>sudo ./start.sh</b><br>
Leave this window open as it now displays ALL of the debug info for all servers.<br>
Opening a new terminal window, log into the SaltStack master by running the following from the repo:<br>
<b>sudo ./login_master.sh</b><br>
From the master, run the following:<br>
 <b>cd<br>
 wget wget https://raw.githubusercontent.com/jrentz/devSaltCluster/master/salt-stack/Examples.sh<br>
 chmod +x Examples.sh<br>
 ./Examples.sh</B><br><br>

 <b>Have FUN!</B>
