#!/bin/bash

echo -n "IP: "
read IP

echo NSE scripts for 445...

nmap -v4 -p 445 --script=smb* --script-args=unsafe=1 "$IP" -T5 -d -oG "$IP"_445_nseScan.txt

echo Finished...
