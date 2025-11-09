#!/bin/bash
DB_IP=$(getent hosts db | awk '{ print $1 }')
WEB_IP=$(getent hosts web-app | awk '{ print $1 }')

iptables -A OUTPUT -d $WEB_IP -s $DB_IP -j DROP
echo "🔒 Tráfego bloqueado de $DB_IP (db) para $WEB_IP (web-app)"
