#!/bin/bash
# This template script is use to hold a bunch of ssh connections
#
# You just need to switch out the proper ssh creds and keep in mind
# how you choose to store this file, where and with what permissions.
# 
# There is a default connection at the top and then using flags you 
# can just swap out for whichever connection you need to use!
#
# example to use the 2nd connection:
# use-ssh -2   or   use-ssh --mybox
#

SSH_CONN_URI="ec2-141-14-28-17.compute-1.amazonaws.com"
SSH_CONN_KEY="/Path/To/Key.pem"
SSH_CONN_USER="ec2-user"

while test $# -gt 0; do
  case "$1" in
    -1|--aws)
      SSH_CONN_URI="ec2-152-42-12-72.compute-1.amazonaws.com"
      SSH_CONN_USER="ec2-user"
      SSH_CONN_KEY="/Path/To/Key.pem"
      shift
      ;;
    -2|--mybox)
      SSH_CONN_URI="ec2-54-8-14-93.compute-1.amazonaws.com"
      SSH_CONN_USER="ec2-user"
      SSH_CONN_KEY="/Path/To/Key.pem"
      shift
      ;;
    -3|--work)
      SSH_CONN_URI="ec2-51-90-21-11.compute-1.amazonaws.com"
      SSH_CONN_USER="ec2-user"
      SSH_CONN_KEY="/Path/To/Key.pem"
      shift
      ;;
    *)
      break
      ;;
    esac
  done


ssh -i $(echo $SSH_CONN_KEY) $(echo $SSH_CONN_USER)@$(echo $SSH_CONN_URI);
