#!/usr/bin/expect
spawn ./askfordept.sh

expect "Enter department:"
send "Sales\r"
expect eof
