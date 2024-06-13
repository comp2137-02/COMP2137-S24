#!/bin/bash
# this script demonstrates looping and testing

function networkreport {
interfaces="$( ip l|
               grep -v link|
               awk '{print $2}'|
               grep -v @ |
               sed s/:// )"


for interface in $interfaces; do
    printf "$interface : "
    address="$(ip a s $interface| awk '/inet /{print $2}')"
    if [ -n "$address" ]; then
        echo $address
    else
        echo "No address assigned"
    fi
done

}

networkreport