# https://github.com/mrosata/shell-collection.git
# mrosata Shell Collection

#### Welcome to my shell collection
So there isn't anything crazy here at the moment. Just a script that I use to quickly access different ssh connections. The copy up on git is just a template of coarse I wouldn't put my creds up on git. (Well, you never know do you?). The other script here is for installing httpd quickly on an AWS Linux box and adding the ec2-user to the www group.

## switch-ssh.sh
-----
This is a pre setup switch statement that allows switching pre-setup ssh configs like `switch-ssh -1` `switch-ssh -2`. The creds in git file are fake.

## install_docker.sh
-----
This script will install docker on an AWS Linux box or an Ubuntu machine. It will also add the user who is executing the script to the group `docker`. That will take until next login to take effect. Then you won't need `sudo` though. The install will `sudo yum update -y` or `sudo apt-get update` but it actually uses wget to install latest docker version. It will install `wget` if you don't have it.

## aws-linux-setup-lamp.sh
-----
This puts httpd mysql and php on a linux box. I use this script on AWS Linux machines. It follows the actual install recommended by Amazon Web Services to a T. After running this script you are ready to rock! Just create a test page and then open your public DNS in a browser crazy dude!



In the future I think I'll add other peoples scripts that I collect along my travels as well as my own. I'll have to make some folders. The collection will grow very slowley because I'm not trying to junk up the repo. I want to have a small toolbox that I can just take down when I need them on various machines.


