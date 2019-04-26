#!/usr/bin/expect

set username [lindex $argv 0]
set password [lindex $argv 1]
set ssh_host "ubuntu1"

spawn rsync -avz $username@$ssh_host:/datafiles/salesdata /backup

expect "$username@$ssh_host's password:" {send $password\r}

#The command failes without the following interact statement
interact
