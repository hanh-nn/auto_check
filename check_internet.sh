#!/bin/bash
curl -s  http://google.com > /home/orangepi/auto_check/html.txt
if [ $? -eq 0 ]; then
#    echo "Success"
else
    date
    echo "reset LTE"
    gpio write 3 0
    sleep 5
    gpio write 3 1
fi