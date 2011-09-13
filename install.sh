#!/bin/bash

usg="Usage: $0 -d <dropbox-user-id> [-l <bit.ly login> -a <bit.ly api key>]"

set -e

while getopts "d:l:a:" opt;
do
case $opt in
d) db=$OPTARG ;;
l) lgn=$OPTARG ;;
a) apik=$OPTARG ;;
*) echo $usg ; exit 1 ;;
esac
done

if [ -z "${db}" ] && [ -z "$DB_USER" ]; then
    echo $usg
    exit 1
fi

if [ -n "$DB_USER" ]; then
    echo "" >> ~/.profile
    echo "export DB_USER=${db}" >> ~/.profile
fi

if [ -n "${lgn}" ] && [ -n "${lgn}" ]; then
    echo "export BITLY_LOGIN=${lgn}" >> ~/.profile
    echo "export BITLY_API_KEY=${apik}" >> ~/.profile
fi

mkdir -p ~/Library/Services/
cp -r LinkCap.workflow/ ~/Library/Services/LinkCap.workflow/