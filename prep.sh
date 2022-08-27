awk -F: '$7 ~ /(\/.*sh)/ { print $1 }' /etc/passwd > users
sed -s 's/$/,/' > usersetup.csv