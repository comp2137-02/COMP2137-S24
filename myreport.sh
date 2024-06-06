#!/bin/bash

today=$(date +%A)
myhost=$(hostname)
username=$USER

cat <<EOF

My report
---------
Produced by: user $username on $today

Today is $today.
This computer is called $myhost.

---------

EOF
