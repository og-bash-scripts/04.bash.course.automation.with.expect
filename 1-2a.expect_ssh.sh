#!/usr/bin/expect

set username [lindex $argv 0]
set password [lindex $argv 1]
set ssh_host "ubuntu1" #[lindex $argv 2]

spawn ssh $username@$ssh_host

expect "$username@$ssh_host\'s password:" {send "$password\r"}

expect "$ "
send "ls -l /etc\n"
send "exit\n"

#Without interact, the above send commands are not run
interact
