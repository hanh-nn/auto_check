#!/bin/bash
curl  http://google.com
if [ $? -eq 0 ]; then
    echo "Success"
else
    echo "Failure"
    gpio write 3 0
    sleep 5
    gpio write 3 1
fi