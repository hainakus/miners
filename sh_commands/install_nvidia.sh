#!/usr/bin/expect -f

#define password
set pass "root"

sudo add-apt-repository ppa:graphics-drivers/ppa
# detect password prompt
expect "*?assword:*"

# send $password
send -- "$pass\r"

#return
send -- "\r"
expect eof
sudo ubuntu-drivers autoinstall

