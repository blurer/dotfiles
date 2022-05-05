#!/bin/bash

useradd bl
usermod -aG sudo bl
mkhomedir_helper bl
mkdir /home/bl/.ssh/
wget https://raw.githubusercontent.com/blurer/myBS/master/authorized_keys 
mv authorized_keys /home/bl/.ssh/authorized_keys
chmod 600 /home/bl/.ssh/authorized_keys
chown -R bl:bl /home/bl/.ssh/
