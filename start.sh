#!/usr/bin/env bash
echo "################################################################"
echo "Do you want to get the last github code in? - Internet required"
echo "It will overwrite anything you may have changed"
echo
echo "Answer with y/Y or n/N"
echo "################################################################"
echo
read response
if [[ "$response" == [yY] ]]; then

    git reset --hard
    git pull

else
    echo "################################################################"
    echo "Nothing has been changed."
    echo "################################################################"
fi

echo "################################################################"
echo "Chose one of the following options."
echo "1) LAPTOP     | one drive"
echo "2) DESKTOP    | 4 total drives"
echo "3) VM 2       | two vm drive"
echo "################################################################"

x=0
while [ $x = 0 ]; do

    read input
    case "$input" in
    1)
        echo "################################################################"
        echo "Starting archinstall with configs OF LAPTOP"
        echo "################################################################"
        echo
        archinstall --config LAPTOP/conf_qtile.json --disk-layout LAPTOP/disk_qtile.json --creds LAPTOP/cred_qtile.json
        x=1
        ;;
    2)
        echo "################################################################"
        echo "Starting archinstall with configs OF DESKTOP"
        echo "################################################################"
        echo
        archinstall --config DESKTOP/conf_qtile.json --disk-layout DESKTOP/disk_qtile.json --creds DESKTOP/cred_qtile.json
        x=1
        ;;
    3)
        echo "################################################################"
        echo "Starting archinstall with configs OF VM2"
        echo "################################################################"
        echo
        archinstall --config VM2/conf_qtile.json --disk-layout VM2/disk_qtile.json --creds VM2/cred_qtile.json
        x=1
        ;;
    *)
        echo "Option $input was not found try again"
        sleep 3
        ;;

    esac
done
