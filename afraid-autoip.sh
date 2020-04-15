#!/usr/bin/env bash
# @date: May-16-2013
# @title: Free dynamic DNS service (http://freedns.afraid.org/dynamic/)
# @note
# sudo vi /etc/crontab

TOKEN_KEY="xxxxxxxxxxxxxxxxxxxxxxxxxxx"

WGET_OPTION="-q --read-timeout=0.0 --waitretry=5 --tries=400 --background"
wget ${WGET_OPTION} http://freedns.afraid.org/dynamic/update.php?${TOKEN_KEY}
sleep 5
rm update.php?${TOKEN_KEY}*
