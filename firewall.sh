#!/bin/bash
iptables -P INPUT DROP
iptables -I INPUT -p tcp --dport # -j ACCEPT
iptables -I INPUT --dport # -j DROP
