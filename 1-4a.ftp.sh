#!/bin/bash
clear
server="10.0.1.4"
echo
read -p "Enter FTP username: " ftpusername
read -p "Enter password: " ftppassword #password sent in plain text, displayed on stdout, mask it

ftp -i -n -v $server << EOT
user $ftpusername $ftppassword
ascii
cd /srv/ftp
lcd /incoming
mget *.tar
bye
EOT
