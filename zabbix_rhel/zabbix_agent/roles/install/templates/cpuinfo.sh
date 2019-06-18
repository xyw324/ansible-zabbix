#!/bin/bash
_1mload=`uptime  | awk -F "[ ,]+"  '{print $11}' `
_5mload=`uptime  | awk -F "[ ,]+"  '{print $12}' `
_15mload=`uptime  | awk -F "[ ,]+"  '{print $13}' `
case $1 in
1mload)
    echo $_1mload
;;
5mload)
    echo $_5mload
;;
15mload)
    echo $_15mload
;;
*)
    exit 1
;;
esac
