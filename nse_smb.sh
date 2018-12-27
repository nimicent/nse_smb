#!/bin/bash

echo Loading scripts for enumerating 445...

nmap -v4 -p 445 --script=smb* --script-args=unsafe=1 [IP] -T5 -d | tee smb_scan_sh.txt

echo Finished
