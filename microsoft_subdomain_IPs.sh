#!/bin/sh

# discovering microsoft's subdomains ip addresses with the command host

# download microsoft's indew page with wget
wget www.microsoft.com
# looping on each subdomain and put as input for the command host
for domain in $(grep -o '[A-Za-z0-9\.-]*\.*microsoft.com' index.html | sort -u); do
echo -n "[+]$doamin  ==> "; host $domain | grep " has address" | cut -d" " -f4
done

 
