#!/bin/bash
# This contains the commands taken from the AWS Linux Apache PHP setup guide
# It is useful to get LAMP running on the AWS Linux box using ec2
# It will add the ec2-user to group www
# If you use this on another box than the AWS Linux EC2 instance then
# you will have to change the user name.
#
# TODO: Maybe I'd like to make this more dynamic for a future where I 
#       could need to use this in other places besides AWS.
#       - Just use $(echo whoami) in place of ec2-user.
#
# http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-LAMP.html

sudo yum update -y
sudo yum install -y httpd24 php56 mysql55-server php56-mysqlnd
sudo service httpd start
sudo chkconfig httpd on
chkconfig --list httpd
sudo groupadd www
sudo usermod -a -G www ec2-user
sudo chown -R root:www /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} +
find /var/www -type f -exec sudo chmod 0664 {} +
