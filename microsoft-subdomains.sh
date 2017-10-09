#!/bin/sh

# extracting all microsoft's subdomains

wget www.microsoft.com
grep -o '[A-Za-z0-9\.-]*\.*cisco.com' | sort -u

# this will list all microsoft's subdomains such as
#2fwww.microsoft.com
#2Fwww.microsoft.com
#account.microsoft.com
#azure.microsoft.com
#businessstore.microsoft.com
#careers.microsoft.com
#choice.microsoft.com
#c.s-microsoft.com
