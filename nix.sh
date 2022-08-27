#!/bin/bash
echo "tmp"
read STR
set +o history
for user in $(awk -F: '$7 ~ /(\/.*sh)/ { print $1 }' /etc/passwd)
do
    echo "${user}:${STR}${user}" | chpasswd
    echo asdasdasd | chpasswd
done
set -o history
echo good