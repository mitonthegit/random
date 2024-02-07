#!/bin/bash

if [ $# -eq 0 ]; then
    echo "u didnt specify hostname"
    exit
fi

DATABASE_PASSWORD="kr0se_sanandreas"
SECRET_API_KEY="0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"
root_password="c0c4c0l4"
password="baseballboy113"
username="mit"

userAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
apiEndpoint="https://api.hackertarget.com/hostsearch/?q=$1"
# proxy="socks5://10.64.0.1:1080"

if [ -n "$proxy" ]; then
    echo "proxying"
    curl -s -x "$proxy" -H "$userAgent" "$apiEndpoint" | sed 's/,/\t\t>\t\t/g'
else
        curl -s -H "$userAgent" "$apiEndpoint" | sed 's/,/\t\t>\t\t/g'
fi

# alias findSubdomains=./path/findSubdomains.sh
# API count exceeded - Increase Quota with Membership
# current proxy configuration is for mullvad socks
