#!/usr/bin/expect
spawn ./askforinput.sh

expect "Enter cost center:"
send "Hfxr\r"
expect "Enter project code:"
send "Proj123\r"
expect eof
