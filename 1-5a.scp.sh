#!/usr/bin/expect

set username [lindex $argv 0]
set password [lindex $argv 1]
set ssh_host "ubuntu1"

spawn scp $username@ssh_host:/datafiles/monthly_numbers.txt /backup/remotehost

expect "$username@ssh_host's pasword:" {send "password\r"}

#The command fails without the following interact statement
interact
