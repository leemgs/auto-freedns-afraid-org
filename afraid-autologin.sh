#!/usr/bin/env bash

# @brief: auto login script for freedns.afraid.org
# @author Geunsik Lim <leemgs@gmail.com>
# @date Apr-15-2020

ID="xxxx@xxxx.com"
PASS="xxxxxxx"

# The curl parameters are as follow.
# -L, --location          Follow redirects (H)
# -s, --silent            Silent mode (don't output anything)
# -w, --write-out FORMAT  Use output FORMAT after completion
# -o, --output FILE       Write to FILE instead of stdout

# This code do only one HEAD-request to the specified URL.
# Then, this script takes redirect_url from location-header.
URL="https://freedns.afraid.org/zc.php?/step=2&from=L3N1YmRvbWFpbi8=&action=auth&username=$ID&password=$PASS"
curl --silent --output /dev/null -I --write-out "* HTTP_CODE: %{http_code}\n* REDIRECT_URL: %{redirect_url}\n* URL_EFFECTIVE: %{url_effective}\n" $URL
echo -e ""
echo -e "Note: If 'REDIRECT_URL' is empty, it means that the auto login is failed."
