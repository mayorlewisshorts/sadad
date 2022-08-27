#!/bin/bash
echo "tmp"
read STR
awk -F: '$7 ~ /(\/.*sh)/ { print $1 }' /etc/passwd > users
sed -s 's/$/,/' > usersetup.csv
for user in $(awk -F: '$7 ~ /(\/.*sh)/ { print $1 }' /etc/passwd)
do
    echo "${user}:${STR}${user}" | chpasswd
done